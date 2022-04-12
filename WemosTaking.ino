//수신부 r32
#include <ArduinoJson.h>
#include <WiFi.h>
#include <HTTPClient.h>


const char* ssid     = "jeongyong";
const char* password = "123456789";

boolean mp3Check = true;
boolean warmerCheck = true;
boolean LEDCheck = true;


int ledRedPin = 14;
int ledGreenPin = 27 ;
int ledBluePin = 16;
int warmerPin = 12;


int red;
int green;
int blue;
int BPM;
int temperature;
int humidity;
int sound;


void setup(){
  Serial.begin(9600);
  ledcSetup(0, 5000, 8);
  ledcAttachPin(14, 0);
  ledcAttachPin(27, 1);
  ledcAttachPin(16, 2);
  pinMode(ledRedPin, OUTPUT);
  pinMode(ledGreenPin, OUTPUT);
  pinMode(ledBluePin, OUTPUT);
  pinMode(warmerPin, OUTPUT);

  
  digitalWrite(warmerPin, HIGH);
  setColor(0, 0, 0);

  
  //와이파이 연결 시도
  WiFi.begin(ssid, password);

  while (WiFi.status() != WL_CONNECTED)
  {
    delay(500);
    
  }

  
}





void makeJson(String result) { //String 형태의 json 형식 파싱
  StaticJsonBuffer<200> jsonBuffer;
  char json[200];

  strcpy(json, result.c_str());
  
  JsonObject& root = jsonBuffer.parseObject(json);

  if(result.startsWith("{\"Red\"")){ // Red로 시작하는 json 형식
  red = root["Red"];
  green = root["Green"];
  blue = root["Blue"];
  
  } else if(result.startsWith("{\"BPM\"")){ // BPM으로 시작하는 json 형식
  BPM = root["BPM"];
  sound = root["Sound"];
  } else if (result.startsWith("{\"Temperature\"")){
  temperature = root["Temperature"];
  humidity = root["Humidity"];
  sound = root["Sound"];   
  } 
  

} 



void loop(){
  if(Serial.available()){
    String dataSet = (String) Serial.readStringUntil('\n'); // '\n' 전까지 송신된 serial 읽기
    makeJson(dataSet);
  }

  
  

if(WiFi.status() == WL_CONNECTED){
  HTTPClient http;
  
  
  http.begin("http://172.30.1.40:8081/LITProject2/DataReceiver?BPM=" + (String) BPM + "&temp=" + (String) temperature + "&humi=" + (String) humidity + "&sound=" + (String) sound);
   
    
    int httpCode = http.GET() ;
    
    
    if(httpCode > 0) {

     
      String result = http.getString();

      if(result.startsWith("music : ")){
        
        if(mp3Check){
        mp3Check = false;
        char command = result[8];
        
       Serial.println(command);
        }
      } else{
      
      mp3Check = true;
      }


      if(result.startsWith("warmerOn")){
      if(warmerCheck){
        warmerCheck = false;
        digitalWrite(warmerPin, HIGH);
      }
      } else if (result.startsWith("warmerOff")){
        if(warmerCheck){
          warmerCheck = false;
          digitalWrite(warmerPin, LOW);
        }
      } else{
         warmerCheck = true;
      }
      
        
      if(result.startsWith("{\"Red\"")){
        if(LEDCheck){
        LEDCheck = false;
        
        makeJson(result);
        setColor(red, green, blue);
        }
      } else{
        LEDCheck = true;
      }
      
      

        
      
      
      
    }
      http.end();
 
  
  } else {
     WiFi.begin(ssid, password);
  }



delay(1);
  


  
}

void setColor(int red, int green, int blue) // RGB 값에 따라 led 제어
{
  ledcWrite(0, red);
  ledcWrite(1, green);
  ledcWrite(2, blue); 
}
