//송신부 uno


#include "DFRobot_Heartrate.h"
#include "DHT.h"

#define heartratePin A1 //심박센서 Uno A1
#define DHTPIN A0 // 온습도 Uno A0
int soundPin = A2;// 사운드센서 Uno A2
#define DHTTYPE DHT11
DHT dht(DHTPIN, DHTTYPE); // dht 매개변수
String dataset;




DFRobot_Heartrate heartrate(DIGITAL_MODE);


void setup() {
  Serial.begin(115200);
}

void loop() {




uint8_t rateValue;
int temp = dht.readTemperature();
int humi = dht.readHumidity();
int sound = analogRead(soundPin);



  heartrate.getValue(heartratePin); ///< A1 foot sampled values
  rateValue = heartrate.getRate(); ///< Get heart rate value 
  if(rateValue <= 120 && rateValue >= 30)  {
  String dataset = "{\"BPM\":" + (String) rateValue + ",\"Temperature\":" + (String) temp + ",\"Humidity\":" + (String) humi + ",\"Sound\":" + (String) sound + "}";
  

   Serial.println(dataset);
  }
  
  
  delay(20);


  

}
