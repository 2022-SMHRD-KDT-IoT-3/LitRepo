#define heartratePin 35
#include "DFRobot_Heartrate.h"
#include <WiFi.h>
#include <HTTPClient.h>

const char* ssid     = "Lit";
const char* password = "12345678";

DFRobot_Heartrate heartrate(DIGITAL_MODE); ///< ANALOG_MODE or DIGITAL_MODE

int num = 0; 

void setup() {
  Serial.begin(115200);
  WiFi.begin(ssid, password);

  while (WiFi.status() != WL_CONNECTED)
  {
    delay(500);
    Serial.print(".");
  }
  Serial.println("Connected to the WiFi network");
  Serial.println("");
}


void loop() {
   if(num == 0){
    if ((WiFi.status() == WL_CONNECTED)) {
  uint8_t rateValue;
  heartrate.getValue(heartratePin); ///< A1 foot sampled values
  rateValue = heartrate.getRate(); ///< Get heart rate value 
 HTTPClient http;

      http.begin("http://192.168.232.101:8090/WebTest/te2?rateValue="+(String)rateValue); 
         int httpCode = http.GET(); 
         if (httpCode > 0) { //Check for the returning code   

        Serial.println(httpCode);
        String result = http.getString();
        Serial.println(result);              

         delay(1000);
     
} http.end(); //Free the resources 
    }
   }
}
