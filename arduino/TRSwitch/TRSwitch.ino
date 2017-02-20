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
 
int TX_pos = 0;
int TX_rest_pos = 45;
int RX_pos = 175;
int RX_rest_pos = 135;
int Center = 90;
int actuator_delay = 750; // in mS

#define SERVO_PIN 9
#define SENSE_PIN 2
#define OUT_PIN 3

void setup() 
{ 
  myservo.attach(SERVO_PIN);  // attaches the servo on pin 9 to the servo object 
  pinMode(SENSE_PIN, INPUT_PULLUP);
  pinMode(OUT_PIN, OUTPUT);
  delay(500);
  setPos(RX_pos, RX_rest_pos);
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
  }
  else if(new_sense) {
    setPos(RX_pos, RX_rest_pos);
  }
  else {
    setPos(TX_pos, TX_rest_pos);
  }
  last_sense = new_sense; 

 
 
} 

