#include "DHT.h"
#include <ArduinoJson.h>
#include <WiFi.h>
#include <HTTPClient.h>
#define DHTPIN 4
#define DHTTYPE DHT11

const char* ssid     = "Lit";
const char* password = "12345678";

DHT dht(DHTPIN, DHTTYPE);

int num = 0; 

void setup() {
  Serial.begin(115200);
  WiFi.begin(ssid, password);
  dht.begin();
    
while (WiFi.status() != WL_CONNECTED)
  {
    delay(500);
    Serial.print(".");
  }
  Serial.println("Connected to the WiFi network");
  Serial.println("");
}

float makeJson(float temp, float humi) { //함수로 받아온 데이터값을 Json으로 변환 시킵니다.
  StaticJsonBuffer<200> jsonBuffer;
  JsonObject& root = jsonBuffer.createObject();

  root["Temp"] = temp;
  root["Humi"] = humi;

  Serial.print("Json data : ");
  root.printTo(Serial);
  Serial.println();
}

void loop() {
  delay(2000);
    
  if(num == 0){
    if ((WiFi.status() == WL_CONNECTED)) { //Check the current connection status
      float t = dht.readTemperature();
      float h = dht.readHumidity();
      HTTPClient http;

      http.begin("http://192.168.232.101:8090/WebTest/te01?Temp="+(String)t+"&Humi="+(String)h); 
         int httpCode = http.GET(); 
         if (httpCode > 0) { //Check for the returning code   

        Serial.println(httpCode);
        String result = http.getString();
        Serial.println(result);              

        // json데이터를 유동적으로 다룰 수 있는 메모리 공간
        DynamicJsonBuffer jsonBuffer;
        JsonObject& root = jsonBuffer.parseObject(result);
         }
              http.end(); //Free the resources              
    }

    }
  }
    
