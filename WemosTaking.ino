//수신부 r32
#include <ArduinoJson.h>
#include <WiFi.h>
#include <HTTPClient.h>


const char* ssid     = "jeongyong";
const char* password = "123456789";



int ledRedPin = 14;
int ledGreenPin = 27 ;
int ledBluePin = 16;
int red;
int green;
int blue;
int BPM;
int temperature;
int humidity;
int sound;


void setup(){
  Serial.begin(115200);
  ledcSetup(0, 5000, 8);
  ledcAttachPin(14, 0);
  ledcAttachPin(27, 1);
  ledcAttachPin(16, 2);
  pinMode(ledRedPin, OUTPUT);
  pinMode(ledGreenPin, OUTPUT);
  pinMode(ledBluePin, OUTPUT);

  //와이파이 연결 시도
  WiFi.begin(ssid, password);

  while (WiFi.status() != WL_CONNECTED)
  {
    delay(500);
    Serial.print(".");
  }
  Serial.println("Connected to the WiFi network");
  Serial.println("");
  
}





void makeJson(String result) { //String 형태의 json 형식 파싱
  StaticJsonBuffer<200> jsonBuffer;
  char json[200];

  strcpy(json, result.c_str());
  
  JsonObject& root = jsonBuffer.parseObject(json);

  if(result.startsWith("{\"Red\"")){ // Red로 시작하는 json 형식
  red = root["Re"];
  green = root["Green"];
  blue = root["Blue"];
  } else if(result.startsWith("{\"BPM\"")){ // BPM으로 시작하는 json 형식
  BPM = root["BPM"];
  temperature = root["Temperature"];
  humidity = root["Humidity"];
  sound = root["Sound"];d
  }
  
  Serial.print("Json data : ");
  root.printTo(Serial);
  Serial.println();
}



void loop(){
  if(Serial.available()){
    String dataSet = (String) Serial.readStringUntil('\n'); // '\n' 전까지 송신된 serial 읽기
    Serial.println(dataSet);
    makeJson(dataSet);
   
   

  }



  
if(WiFi.status() == WL_CONNECTED){
  HTTPClient http;
  http.begin("http://172.30.1.40:8081/WebTest/LEDColorChange?BPM=" + (String) BPM + "&temp=" + (String) temperature + "&humi=" + (String) humidity + "&sound=" + (String) sound);
    int httpCode = http.GET() ;
    if(httpCode > 0) {

      Serial.println(httpCode);
      String result = http.getString();
      Serial.println(result);
      makeJson(result);
      
    }
      http.end();
  }

setColor(red, green, blue);

delay(200);
  


  
}

void setColor(int red, int green, int blue) // RGB 값에 따라 led 제어
{
  ledcWrite(0, red);
  ledcWrite(1, green);
  ledcWrite(2, blue); 
}
