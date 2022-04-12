#include <SoftwareSerial.h>
SoftwareSerial esp(2,3); // rx,tx

#include "DFRobot_Heartrate.h"


int cnt = 0;
uint8_t heartBeatScore[5];
uint8_t rateValue;



#define pulsePin A1
DFRobot_Heartrate heartrate(DIGITAL_MODE);


char ssid[] = "jeongyong";            
char pass[] = "123456789"; 

String data = "";

int pulseSensor(){
  
    int cnt = 0;
  int sumRate = 0;

  while(true){
    heartrate.getValue(pulsePin);
    rateValue = heartrate.getRate();
    if(rateValue >= 30 && rateValue <= 120){
      Serial.println(rateValue);
    heartBeatScore[cnt++] = rateValue; 
    }

    if(cnt == 5){
      break;
    }
    delay(20);
  }
  
  for(int i = 0; i < 5; i++){
    sumRate += heartBeatScore[i];  
  }
  sumRate = sumRate / 5;

  return sumRate;
}

void setup(){
  Serial.begin(9600);

   while (!Serial) {
  }
  esp.begin(9600);
  wifiConnect();
    
  


  
}

void wifiConnect(){
  esp.println("AT");
  
  if(esp.find("OK"))  Serial.println("AT,OK");

  esp.println("AT+CWMODE=1");

  if(esp.find("no change")) Serial.println("mode setting");

  esp.println("AT+CWJAP=\"jeongyong\",\"123456789\"");

  delay(3000);
  if(esp.find("OK")){ Serial.println("Wifi connected");

  } else{
    Serial.println("error");
  }
  esp.println("AT+CIPSTART=\"TCP\",\"172.30.1.40\",8081");
  esp.setTimeout(3000);
  if(esp.find("Linked")) Serial.println("Server connected");

  
}

boolean wifiConnectCheck(){
  esp.println("AT+CWJAP?");
  boolean check = true;
  if(esp.find("jeongyong")) {
    check = true;
  } else {
    check = false;
  }
  


  
  return check;
  
}


void loop(){
 

  
  if(esp.find("Unlink")){
    
    
     esp.println("AT+CIPSTART=\"TCP\",\"172.30.1.40\",8081");
      esp.setTimeout(2000);
      if(esp.find("Linked")) Serial.println("Server connected");
  } else {

    int sumRate = pulseSensor();
    
     String uri = "/LITProject2/nanoReceiver?heart=" +(String) sumRate;
     String Data = "GET " + uri;
    
     esp.println("AT+CIPSEND=" + (String)(Data.length() + 2));
     
     if(esp.find(">")){

      esp.println(Data);
      Serial.println("Sending data Success");
      
     } else{
      Serial.println("data Sending failed");
      esp.println("AT+RST");
      esp.setTimeout(3000);
      wifiConnect();
     }
    
    
  }

 delay(20);
    
    
    
    
    
    






}
