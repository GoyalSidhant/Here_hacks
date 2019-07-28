//#include <Arduino.h>
#include <SoftwareSerial.h>

SoftwareSerial mySerial(0,1);
//#define PIEZOVIBRATION_PIN_NEG	A1

const int timeout = 10000;   //define timeout of 10 sec
const int threshold = 500;
char menuOption = 0;
long time0;
int k;
void setup() {
    mySerial.begin(9600);
    Serial.begin(9600);
    while (!Serial) ; 
    Serial.println("start");
    pinMode(A0, INPUT);
    pinMode(7, OUTPUT);
    
//    menuOption = menu();
    
}

// Main logic of your circuit. It defines the interaction between the components you selected. After setup, it runs over and over again, in an eternal loop.
void loop() 
{ 
  Serial.println(F("\nWhich component would you like to test?"));
    Serial.println(F("(1) Piezo Vibration Sensor - Large with Mass"));
    Serial.println(F("(2) QuadBand GPRS-GSM SIM800L"));
    Serial.println(F("(menu) send anything else or press on board reset button\n"));
    while (!Serial.available());

    // Read data from serial monitor if received
    while (Serial.available()) 
    {
        char c = Serial.read();
        if (isAlphaNumeric(c)) 
        {   
            
            if(c == '1') 
          Serial.println(F("Now Testing Piezo Vibration Sensor"));
        else if(c == '2') 
          Serial.println(F("Now Testing GSM SIM800L"));
            else
            {
                Serial.println(F("illegal input!"));
                return 0;
            }
            time0 = millis();
            return c;
        }
    }

    
if(menuOption == '1')
    {
    // Disclaimer: The Piezo Vibration Sensor - Large with Mass is in testing and/or doesn't have code, therefore it may be buggy. Please be kind and report any bugs you may find.
    }
    else if(menuOption == '2')
    {
    // Disclaimer: The QuadBand GPRS-GSM SIM800L is in testing and/or doesn't have code, therefore it may be buggy. Please be kind and report any bugs you may find.
    }
    
    if (millis() - time0 > timeout)
    {
    Serial.println("RERUN");
    Serial.println(F("\nWhich component would you like to test?"));
    Serial.println(F("(1) Piezo Vibration Sensor - Large with Mass"));
    Serial.println(F("(2) QuadBand GPRS-GSM SIM800L"));
    Serial.println(F("(menu) send anything else or press on board reset button\n"));
    while (!Serial.available());

    // Read data from serial monitor if received
    while (Serial.available()) 
    {
        char c = Serial.read();
        if (isAlphaNumeric(c)) 
        {   
            
            if(c == '1') 
          Serial.println(F("Now Testing Piezo Vibration Sensor - Large with Mass - note that this component doesn't have a test code"));
        else if(c == '2') 
          Serial.println(F("Now Testing QuadBand GPRS-GSM SIM800L - note that this component doesn't have a test code"));
            else
            {
                Serial.println(F("illegal input!"));
                return 0;
            }
            time0 = millis();
            return c;
        }
    }
    }
  k = analogRead(A0);
  if(k>=threshold){
    SendMessage();
    digitalWrite(7, HIGH);
  }
  else{
    digitalWrite(7, LOW);
  }
}

//Message sent
void SendMessage()
{
   mySerial.println("AT+CMGF=1");//Sets the GSM Module in Text Mode
  delay(1000); // Delay of 1000 milli seconds or 1 second
  mySerial.println("AT+CMGS=\"+919560378310\"\r"); // ANY MOBILE NUMBER
  delay(1000);
  mySerial.println("Warning!!!XYZ might be in danger");// The SMS text you want to send
  delay(100);
  mySerial.println((char)26);// ASCII code of CTRL+Z
  delay(1000);
}



