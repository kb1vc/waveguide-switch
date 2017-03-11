/* Sweep
 by BARRAGAN <http://barraganstudio.com> 
 This example code is in the public domain.

 modified 8 Nov 2013
 by Scott Fitzgerald
 http://arduino.cc/en/Tutorial/Sweep
*/ 

#include <Servo.h> 
 
 
Servo myservo;  // create servo object to control a servo 
                // twelve servo objects can be created on most boards
 
int RX_pos = 0;
int RX_rest_pos = 45;
int TX_pos = 175;
int TX_rest_pos = 135;
int Center = 90;
int actuator_delay = 750; // in mS

#define SERVO_PIN 9
#define SENSE_PIN 2
#define OUT_PIN 3
#define RX_LED 7
#define TX_LED 6
#define RX_Sense A1
#define TX_Sense A0

#define RX_Threshold 250
#define TX_Threshold 250

void setup() 
{ 
  myservo.attach(SERVO_PIN);  // attaches the servo on pin 9 to the servo object 
  pinMode(SENSE_PIN, INPUT_PULLUP);
  pinMode(OUT_PIN, OUTPUT);
  pinMode(RX_LED, OUTPUT);
  pinMode(TX_LED, OUTPUT);
  delay(500);
  setMode(1);
  
  Serial.begin(19200);
  while(!Serial); 
  
} 

void readSensors()
{
  int rxs = analogRead(RX_Sense);
  int txs = analogRead(TX_Sense);
  int rxs2 = analogRead(RX_Sense);
  int txs2 = analogRead(TX_Sense);
  Serial.print("RXS "); 
  Serial.print(rxs); Serial.print(' ');
  Serial.print(rxs2);
  Serial.print("   TXS "); 
  Serial.print(txs); Serial.print(' ');
  Serial.println(txs2);  
}

// return 1 for RX -1 for TX and 0 for no dice
int checkSensors()
{
  int rxs = analogRead(RX_Sense);
  int txs = analogRead(TX_Sense);
  
  if((rxs < RX_Threshold) && (txs > TX_Threshold)) 
    return 1;
  else if((rxs > RX_Threshold) && (txs < TX_Threshold))
    return -1;
  else {
    Serial.print("! rxs txs = ");
    Serial.print(rxs); Serial.print("  "); Serial.println(txs);
    return 0;
  }
}


void setLEDs(int rx_mode)
{
  if(rx_mode) {
    digitalWrite(RX_LED, HIGH);
    digitalWrite(TX_LED, LOW);
  }
  else {
    digitalWrite(RX_LED, LOW);
    digitalWrite(TX_LED, HIGH);
  }
}

 
void setMode(int rx_mode) {
  int flag = 1; 
  if(rx_mode) {
    while(flag) {
      myservo.write(RX_pos);
      delay(actuator_delay);
      checkSensors();  // read twice to spin up A/D converter
      if(checkSensors() == 1) flag = 0;
    }
    myservo.write(RX_rest_pos);
  }
  else {
   while(flag) {
      myservo.write(TX_pos);
      checkSensors(); // read twice to spin up A/D converter
      if(checkSensors() == -1) flag = 0;
      else delay(actuator_delay);
    }
    myservo.write(TX_rest_pos);   
  }
  setLEDs(rx_mode);
  
  //readSensors();
}

void setPos(int pos, int rest_pos) {
  myservo.write(pos);
  delay(actuator_delay);
  myservo.write(rest_pos);
}

int last_sense = 1; 

void loop() 
{ 
  int new_sense  = digitalRead(SENSE_PIN);
  
  if(new_sense == last_sense) {
    // nothing has happened. 
    delay(100);
    readSensors();
  }
  else if(new_sense) {
    setMode(1);
  }
  else {
    setMode(0);
  }
  last_sense = new_sense; 

} 

