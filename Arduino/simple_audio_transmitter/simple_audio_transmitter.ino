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

#include <Audio.h>
#include <SPI.h>
#include <nRF24L01.h>
#include <RF24.h>
#include <EEPROM.h>

#define audioBufferSize 128

#define addrEEPROM 0
#define LED_PIN 3
#define CE_PIN 5
#define CSN_PIN 9

RF24 radio(CE_PIN, CSN_PIN);

const byte pipeaddress[][6] = {"1Ad", "2Ad", "3Ad"};

// GUItool: begin automatically generated code
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
// GUItool: end automatically generated code

uint8_t bufr[audioBufferSize * 2];

// The last saved delay value is stored in EEPROM memory address 0.
int del = EEPROM.read(addrEEPROM);

elapsedMillis clk;

bool ampFlag = 0;

void setup(){
  Serial.begin(115200);
  delay(500);
  pinMode(LED_PIN, OUTPUT);
  digitalWriteFast(LED_PIN, HIGH);
  delay(500);
  digitalWriteFast(LED_PIN, LOW);
  
  AudioMemory(15);
    
  mixer1.gain(0,0.5);
  mixer1.gain(1,0.5);
  
  delay1.delay(0, del);
  delay2.delay(0, del);
  
  radio.begin();
  radio.setPayloadSize(32);
  radio.setAutoAck(false);
  radio.disableCRC();
  //radio.setCRCLength(RF24_CRC_8);
  radio.setPALevel(RF24_PA_MAX);
  radio.setDataRate(RF24_2MBPS);
  radio.setRetries(0,1);
  radio.setChannel(122);
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
  queue1.begin();
}

void loop(){
//  delayChanger();

  // Check the peak amplitude every 250ms and set the amplitude flag boolean.
  if(clk >= 250){
    if(peak1.available()){
      ampFlag = peak1.read();
    }
    clk = 0;
  }

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
  EEPROM.update(addrEEPROM, del);
  Serial.print(del);
  Serial.println(" ms delay saved!");
}
