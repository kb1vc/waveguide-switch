
#define SENSE_PIN 2
#define PTT_PIN 9

void setup() {
  // put your setup code here, to run once:
   pinMode(SENSE_PIN, INPUT);
   pinMode(PTT_PIN, OUTPUT);
   
   Serial.begin(19200);
   while(!Serial);
}

void loop() {
  // put your main code here, to run repeatedly:
  int sense; 
  unsigned long tst, ten, dur; 
  
  while(1) {
    sense=0;

    digitalWrite(PTT_PIN, LOW);
    tst = millis();   
    while(!sense) {
        sense = digitalRead(SENSE_PIN);
        ten = millis();
    }
    dur = ten - tst; 
    Serial.print(dur); Serial.print(" wrote low  got "); Serial.println(sense);
    delay(1000);
    
    sense=1;
    digitalWrite(PTT_PIN, HIGH); 
    tst = millis();   
    while(sense) {
        sense = digitalRead(SENSE_PIN);
        ten = millis();
    }
    dur = ten - tst; 
    Serial.print(dur); Serial.print(" wrote high  got "); Serial.println(sense);    

    delay(1000);
  }
}
