//송신부 uno nano


#include "DFRobot_Heartrate.h"
#include "DHT.h"

#define heartratePin A1 //심박센서 Uno A1
#define DHTPIN A0 // 온습도 Uno A0
#define DHTTYPE DHT11

int soundPin = A2;// 사운드센서 Uno A2



DHT dht(DHTPIN, DHTTYPE); // dht 매개변수


DFRobot_Heartrate heartrate(DIGITAL_MODE);

void setup() {
  Serial.begin(9600);
}

void loop() {




uint8_t rateValue;
int temp = dht.readTemperature();
int humi = dht.readHumidity();
int sound = analogRead(soundPin);





heartrate.getValue(heartratePin); ///< A1 foot sampled values


rateValue = heartrate.getRate();
  
  if(rateValue >=30 && rateValue <= 120){
   String dataset = "{\"BPM\":" + (String) rateValue + ",\"Sound\":" + (String) sound + "}";
   Serial.println(dataset);
  }  
  
  if (temp >= 0){

   String dataset = "{\"Temperature\":" + (String) temp + ",\"Humidity\":" + (String) humi + "}";
    Serial.println(dataset);

    
  }
  
  delay(20);



}
