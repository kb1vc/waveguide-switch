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

volatile int PTT_interrupt_occurred;
volatile int PTT_pin_state;

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

void loop() 
{ 
  
  if(PTT_pin_state) {
    setMode(1);
  }
  else {
    setMode(0);
  }
  goto_sleep();
} 

