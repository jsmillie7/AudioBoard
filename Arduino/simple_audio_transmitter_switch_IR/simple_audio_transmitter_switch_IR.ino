/*
 * Teensy 4.0 Audio Transmitter
 * Author: James Smillie
 * Date: 05-Jun-2020
 * 
 * Hardware: Teensy 4.0, NRF24L01
 * Optional hardware: S/PDIF IO ports, Teensy Audio Shield Rev D
 *
 * Todo: 
 *   - Implement a pipe to control receiver(s) volume (independently maybe?)
 *   - Look into IR receiver/Serial receiver for remote control.
 */

// Included Libraries
#include <Audio.h>
#include <SPI.h>
#include <nRF24L01.h>
#include <RF24.h>
#include <EEPROM.h>
#include <IRremote.h>

// Remote Codes
#define VOLUME_UP 0x97E77B1B
#define VOLUME_DOWN 0xEC7AD6DA
#define VOLUME_MUTE 0x54051BF

// IR Setup
#define IR_PIN 10
IRrecv irrecv(IR_PIN);
decode_results results;
elapsedMillis IRtime;
float vol = 0.24;
bool mute = false;
float setVol = 0.0;
float curVol = 0.0;
float deltaVol = 0.04;

// Defined Constants
#define EEPROM_ADDR     0
#define LED_PIN         3
#define MUX_SW          4
#define CE_PIN          5
#define SIG_DET         6
#define CSN_PIN         9
#define RF_MOSI         11
#define RF_MISO         12
#define RF_SCK          13
#define SPDIF_IN        14
#define SPDIF_OUT       15
#define IRQ_PIN         16
#define CHANNEL         122
#define audioBufferSize 128
 
// Audio Library Connections
//AudioInputSPDIF3         spdif1;
AsyncAudioInputSPDIF3    spdif1(false, false, 50, 20);
AudioEffectDelay         delay2;         //xy=444,196
AudioEffectDelay         delay1;         //xy=446,65
AudioMixer4              mixer1;         //xy=447,333
AudioRecordQueue         queue1;         //xy=659,328
AudioAnalyzePeak         peak1;
AudioOutputSPDIF3        spdif2;
AudioConnection          patchCord1(spdif1, 0, delay1, 0);
AudioConnection          patchCord2(spdif1, 1, delay2, 0);
AudioConnection          patchCord3(spdif1, 0, mixer1, 0);
AudioConnection          patchCord4(spdif1, 1, mixer1, 1);
AudioConnection          patchCord5(delay1, 0, spdif2, 0);
AudioConnection          patchCord6(delay2, 0, spdif2, 1);
AudioConnection          patchCord7(mixer1, queue1);
AudioConnection          patchCord8(mixer1, peak1);

// Audio Library Variables
DMAMEM uint8_t bufr[audioBufferSize * 2];
int del = EEPROM.read(EEPROM_ADDR);

// Radio Setup Variables
RF24 radio(CE_PIN, CSN_PIN);
const byte pipeaddress[][6] = {"1Ad", "2Ad", "3Ad"};
elapsedMillis clk;
bool ampFlag = 0;

// MUX Switch Variables
int vals = 25;
int iters = 0;
float mean;
bool muxState = false;

void setup(){
  // Start IR Receiver
  irrecv.enableIRIn();
  
  // Initialize IO Pins
  pinMode(LED_PIN, OUTPUT);
  pinMode(SIG_DET,INPUT);
  pinMode(MUX_SW,OUTPUT);
  digitalWrite(MUX_SW,LOW);

  // Initalize Serial Port
  Serial.begin(115200);

  // Initialize Audio Settings
  AudioMemory(15);
  mixer1.gain(0,setVol);
  mixer1.gain(1,setVol);
  delay1.delay(0, del);
  delay2.delay(0, del);

  // Initialize Radio Setings
  radio.begin();
  radio.setPayloadSize(32);
  radio.setAutoAck(false);
//  radio.setAutoAck(true);
  radio.disableCRC();
  //radio.setCRCLength(RF24_CRC_8);
//  radio.setPALevel(RF24_PA_MAX);
  radio.setPALevel(RF24_PA_LOW);
  radio.setDataRate(RF24_2MBPS);
  radio.setRetries(0,1);
  radio.setChannel(CHANNEL);
  delay(50);
  radio.openWritingPipe(pipeaddress[0]);
  radio.stopListening();
  delay(100);
  
  // Make sure the NRF24L01+ board is available!
  while(not radio.isChipConnected()){
    digitalWriteFast(LED_PIN, !digitalReadFast(LED_PIN));
    delay(250);
  }
  
  digitalWriteFast(LED_PIN, LOW);

  // Start the audio data queue
  queue1.begin();
}

FASTRUN void loop(){
  // Checks serial buffer and updates delay value 
  delayChanger();

  // Search for remote conrol codes
  getVol();
  if (curVol != setVol){
    // Set Volume on mixer
    mixer1.gain(0,setVol);
    mixer1.gain(1,setVol);
    curVol = setVol;
  }

  // Signal detection for auto switch
  autoSwitchMUX();

  /*
   *  Every 250 ms, check the peak amplitude over that time. We don't care what
   *  the exact peak was, but rather, it is a convenient way to tell *if* there was
   *  any audio data in that time period. 250 ms of silence will return 0.
   *  Set ampFlag, a boolean, 0 = 0, !0 = 1
   */
  // Check the peak amplitude every 250ms and set the amplitude flag boolean.
  if(clk >= 250){
    if(peak1.available()){
      ampFlag = peak1.read();
    }
    clk = 0;
  }

  /*
   *  This is where the audio transmission occurs. If the teensy audio library has written
   *  audio data to memory, a queue will be available. Read it and immediately free up the
   *  buffer for the next set of data. If the peak amplitude (read above) is nonzero, then 
   *  transmit the audio data over the radio. The peak amplitude check prevents the teensy 
   *  from broadcasting silent audio and eliminates static interference while there is no audio
   *  playing, as well as reducing the total energy usage.
   */
  if(queue1.available()){
    memcpy(bufr, queue1.readBuffer(), audioBufferSize*2);
    queue1.freeBuffer();
    if(ampFlag){
      for (int i=0; i<8; i++){
        radio.writeFast(&bufr[i * 32],32);
      }
    }
  }
}


void autoSwitchMUX(){ 
  /*  S/PDIF signal detection and automatic switching between digital audio 
   *  inputs.
   *  
   *  Switch Logic:
   *  Take the average of the signal detect pin over <vals> iterations.
   *  If the average == 1.00, the receiver has not received a signal in the
   *  last <vals> loops, so we conclude the s/pdif signal is not present,
   *  and set or leave the MUX switch on input 1. Likewise, if the average is 
   *  less than 1.00 (I used a tolerance threshold of 0.95), we can infer that 
   *  the optical receiver has received a signal in the last <vals> loops, and 
   *  set or leave the MUX switch to input 2.
   */
   
  if(iters<vals){
    mean += digitalReadFast(SIG_DET);
    iters++;
  }
  else{
    mean /= vals;
    if(mean>0.95){
      digitalWriteFast(MUX_SW,LOW);
      digitalWriteFast(LED_PIN, LOW);
    }
    else{
      digitalWriteFast(MUX_SW,HIGH);
      digitalWriteFast(LED_PIN, HIGH);
    }
    mean = 0;
    iters = 0;
  }
}


void delayChanger(){
 /*
  *  This is useful for fine tuning the delay to get the wireless 
  *  speakers synced.
  * 
  *  Note: Make sure that the newline/carriage return dropdown is
  *        set to "No line ending" 
  */
  if(Serial.available()){
    byte rcvd = Serial.read();
    if(rcvd == 112 /* p */){
      delayUp();
    }
    else if(rcvd == 109 /* m */){
      delayDown();
    }
    else if(rcvd == 115 /* s */){
      save();
    }
  }
}


void delayUp(){
  del++;
  setDelay();
}


void delayDown(){
  del--;
  setDelay();
}


void setDelay(){
  AudioNoInterrupts();
  delay1.delay(0, del);
  delay2.delay(0, del);
  AudioInterrupts();
  
  Serial.print("Delay updated to ");
  Serial.print(del);
  Serial.println(" ms.");
}


void save(){
  EEPROM.update(EEPROM_ADDR, del);
  Serial.print(del);
  Serial.println(" ms delay saved!");
}


FASTRUN void getVol() {
  if (irrecv.decode(&results)) {
    int val = results.value;
    irrecv.resume();
    if (IRtime > 25){
      switch (val) {
      // Volume Up
      case VOLUME_UP:
        mute = false;
        vol+=deltaVol;
        if (vol > 1.00){
          vol = 1.00;
        }
        IRtime = 0;
        break;
      // Volume Down
      case VOLUME_DOWN:
        mute = false;
        vol-=deltaVol;
        if (vol < 0.00){
          vol = 0.00;
        }
        IRtime = 0;
        break;
      // Mute
      case VOLUME_MUTE:
        if (IRtime > 250){
          mute = not mute;
          IRtime = 0;
        }
      break;
      }
      setVol = vol*(not mute);
    }
  }
}
