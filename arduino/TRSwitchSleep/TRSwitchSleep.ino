/* Sweep
 by BARRAGAN <http://barraganstudio.com> 
 This example code is in the public domain.

 modified 8 Nov 2013
 by Scott Fitzgerald
 http://arduino.cc/en/Tutorial/Sweep
*/ 

#include <Servo.h> 

#include <avr/interrupt.h>
#include <avr/sleep.h>
 
Servo myservo;  // create servo object to control a servo 
                // twelve servo objects can be created on most boards
 
int RX_pos = 0;
int RX_rest_pos = 90;// was 45;
int TX_pos = 175;
int TX_rest_pos = 90; // was 135;
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

volatile int PTT_interrupt_occurred;
volatile int PTT_pin_state;

#define RX_MODE 1
#define TX_MODE -1
#define NO_MODE 0

void setup() 
{ 
  myservo.attach(SERVO_PIN);  // attaches the servo on pin 9 to the servo object 
  pinMode(SENSE_PIN, INPUT_PULLUP);
  pinMode(OUT_PIN, OUTPUT);
  pinMode(RX_LED, OUTPUT);
  pinMode(TX_LED, OUTPUT);
  delay(500);
  setMode(1);
  

  PTT_pin_state = 1;   
} 

void init_sleep()
{
  PTT_interrupt_occurred = 0;
}

void goto_sleep()
{
  set_sleep_mode(SLEEP_MODE_PWR_DOWN);
  noInterrupts(); // hold off interrupts while we're sleeping
  sleep_enable();
  attachInterrupt(digitalPinToInterrupt(SENSE_PIN), PTT_isr, CHANGE);
  interrupts();
  sleep_cpu(); // goto sleep.
}

void PTT_isr()
{
  sleep_disable();   // don't go back to sleep until we've got the interrupt handled. (prevents a race between sleep_enable and attach)
  detachInterrupt(digitalPinToInterrupt(SENSE_PIN)); 
  PTT_interrupt_occurred = 1;
  PTT_pin_state = digitalRead(SENSE_PIN);
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

    return 0;
  }
}


void setLEDs(int mode)
{
  if(mode == RX_MODE) {
    digitalWrite(RX_LED, HIGH);
    digitalWrite(TX_LED, LOW);
  }
  else if(mode == TX_MODE) {
    digitalWrite(RX_LED, LOW);
    digitalWrite(TX_LED, HIGH);
  }
  else {
    digitalWrite(RX_LED, LOW);
    digitalWrite(TX_LED, LOW);
  }
}


 
void setMode(int mode) {
  int flag = 1; 
  int count = 0;
#warning ENABLE TX_EN EARLY OFF.
  // UNCOMMENT THIS WHEN WE'RE DONE TESTING  setLEDs(NO_MODE); 
  if(mode == RX_MODE) {
    myservo.write(RX_pos);
    while(flag) {
      checkSensors();  // read twice to spin up A/D converter
      if(checkSensors() == 1) flag = 0;
      else {
        count++; 
        if(count == 100) {
          myservo.write(RX_pos);
          count = 0;
        } 
      }
    }
    myservo.write(RX_rest_pos);
    setLEDs(RX_MODE);
  }
  else if (mode == TX_MODE) {
    myservo.write(TX_pos);
    while(flag) {
      checkSensors(); // read twice to spin up A/D converter
      if(checkSensors() == -1) flag = 0;
      else {
        count++;
        if(count == 100) {
          myservo.write(TX_pos);
          count = 0; 
        }
      }
    }
    myservo.write(TX_rest_pos);   
    setLEDs(TX_MODE);
  }

}


void loop() 
{ 
  // pin state is low for TX.
  if(PTT_pin_state) {
    setMode(RX_MODE);
  }
  else {
    setMode(TX_MODE);
  }
  delay(actuator_delay);
  goto_sleep();
} 

