/*
 * Teensy 4.0 Audio Receiver
 * Author: James Smillie
 * Date: 05-Jun-2020
 * 
 * Hardware: Teensy 4.0, NRF24L01+
 * Optional: S/PDIF IO ports, Teensy Audio Shield Rev D
 */

// Audio and Radio Modules
#include <Audio.h>
#include <SPI.h>
#include <nRF24L01.h>
#include <RF24.h>

#define audioBufferSize 128

#define LED_PIN   3
#define CE_PIN    5
#define CSN_PIN   9
#define SPDIF_IN  14
#define SPDIF_OUT 15
#define IRQ_PIN   16

/* Other RF24 pins:
 * MOSI - 11
 * MISO - 12
 * SCK -  13 
 */

RF24 radio(CE_PIN, CSN_PIN);

const byte pipeaddress[][6] = {"1Ad", "2Ad", "3Ad"};

// GUItool: begin automatically generated code
AudioPlayQueue          queue1;
AudioOutputI2S          i2s1;
//AudioOutputSPDIF3       spdif1;
AudioConnection         patchCord1(queue1, 0, i2s1, 0);
AudioConnection         patchCord2(queue1, 0, i2s1, 1);
//AudioConnection         patchCord3(queue1, 0, spdif1, 0);
//AudioConnection         patchCord4(queue1, 0, spdif1, 1);
AudioControlSGTL5000    sgtl5000; 
// GUItool: end automatically generated code

uint8_t bufr[audioBufferSize * 2];

bool triggerIRQ = 0; // Set to HIGH when audio data is available

void setup(){
  // Serial Setup
  Serial.begin(115200);
  Serial.println("Starting Receiver");

  pinMode(LED_PIN, OUTPUT);
  digitalWriteFast(LED_PIN, HIGH);
  delay(500);
  digitalWriteFast(LED_PIN, LOW);
  
  // Set up audio parameters here
  AudioMemory(15);
  
  sgtl5000.enable(); // Teensy Audio Board rev. D
  sgtl5000.volume(0.85); 
  
  //Set up radio parameters!
  radio.begin();
  radio.setPayloadSize(32);
  radio.setAutoAck(false); //no Ack
  radio.disableCRC(); //no CRC
//  radio.setCRCLength(RF24_CRC_8);
  radio.setPALevel(RF24_PA_MAX);
  radio.setDataRate(RF24_2MBPS);
  radio.setRetries(0,1);
  radio.setChannel(122);
  delay(100);
  
  radio.openReadingPipe(1, pipeaddress[0]);
  delay(50);

  // Make sure the NRF24L01+ board is available!
  while(not radio.isChipConnected()){
    digitalWriteFast(LED_PIN, !digitalReadFast(LED_PIN));
    delay(250);
  }
  digitalWriteFast(LED_PIN, LOW);
  Serial.println("NRF24L01+ Detected");

  // Start receiving data
  radio.startListening();
  
  // Interrupt Request Pin (IRQ) signals new data available
  attachInterrupt(IRQ_PIN, IRQ_TRIGGER, FALLING);
}


void loop()
{    
  /*
  * Wait for a flag to trigger from the IRQ pin, and read all data from the memory
  * buffer as 8 packets. Copy the data into the &bufr pointer, and when complete,
  * send into the queue play buffer in the Teensy audio library. Set the trigger 
  * back to LOW. 
  */
  if(triggerIRQ){
    for(int bufcount = 0; bufcount < 8; bufcount++){
      radio.read(&bufr[bufcount*32], 32);
      if(bufcount == 7){
        int16_t *p = queue1.getBuffer();
        memcpy(p, &bufr[0], (audioBufferSize * 2));
        queue1.playBuffer();
        triggerIRQ = 0;
      }
    }
  }
}


void IRQ_TRIGGER(){
  triggerIRQ = 1;
}
