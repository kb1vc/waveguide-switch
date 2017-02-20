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
 
int Left = 0;
int Right = 175;
int Center = 90;
int actuator_delay = 500; // in mS
void setup() 
{ 
  myservo.attach(9);  // attaches the servo on pin 9 to the servo object 
} 
 
void setPos(int pos) {
  myservo.write(pos);
  delay(actuator_delay);
  myservo.write(Center);
}

void loop() 
{ 
  setPos(Left);
  
  delay(1000);
  
  setPos(Right);
  
  delay(2000); 
 
} 

