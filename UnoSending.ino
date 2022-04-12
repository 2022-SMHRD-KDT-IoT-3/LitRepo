

#include "SoftwareSerial.h"
#include "DFRobotDFPlayerMini.h"

#include "DHT.h"

#define heartratePin A1 //심박센서 Uno A1
#define DHTPIN A0 // 온습도 Uno A0
#define DHTTYPE DHT11

SoftwareSerial mySoftwareSerial(10, 11); // mp3 플레이어 
DFRobotDFPlayerMini myDFPlayer;
char command;
int pausa = 0;


int soundPin = A2;// 사운드센서 Uno A2



DHT dht(DHTPIN, DHTTYPE); // dht 매개변수


void setup() {
  Serial.begin(9600);
  mySoftwareSerial.begin(9600);

  pinMode(soundPin, INPUT);


  if (!myDFPlayer.begin(mySoftwareSerial))
  {
  while (true);
  }

//Definicoes iniciais
  myDFPlayer.setTimeOut(500); //Timeout serial 500ms
  myDFPlayer.volume(20); //Volume 5
  myDFPlayer.EQ(0); //Equalizacao normal

 myDFPlayer.stop();

  
}

void loop() {


int temp = dht.readTemperature();
int humi = dht.readHumidity();
int sound = analogRead(soundPin);
  if (temp >= 0){
   String dataset = "{\"Temperature\":" + (String) temp + ",\"Humidity\":" + (String) humi + ",\"Sound\":" + (String) sound + "}";
  Serial.println(dataset);
  }



// 스피커
while (Serial.available() > 0){




command = Serial.read();


if ((command >= '1') && (command <= '9'))
{


  
Serial.print("Music reproduction");
Serial.println(command);

command = command - 48;


myDFPlayer.playMp3Folder(17);
menu_opcoes();
}

//Reproduction
//Stop

if (command == 's')
{
myDFPlayer.stop();
Serial.println("Music Stopped!");
menu_opcoes();
}

//Pausa/Continua a musica
if (command == 'p')
{
pausa = !pausa;
if (pausa == 0)
{
Serial.println("Continue...");
myDFPlayer.start();
}

if (pausa == 1)
{
Serial.println("Music Paused!");
myDFPlayer.pause();
}

menu_opcoes();
}


//Increases volume
if (command == '+')
{
myDFPlayer.volumeUp();
Serial.print("Current volume:");
Serial.println(myDFPlayer.readVolume());
menu_opcoes();
}

if (command == '<')
{
myDFPlayer.previous();
Serial.println("Previous:");
Serial.print("Current track:");
Serial.println(myDFPlayer.readCurrentFileNumber()-1);
menu_opcoes();
}

if (command == '>')
{
myDFPlayer.next();
Serial.println("next:");
Serial.print("Current track:");
Serial.println(myDFPlayer.readCurrentFileNumber()+1);
menu_opcoes();
}

//Decreases volume
if (command == '-')
{
myDFPlayer.volumeDown();
Serial.print("Current Volume:");
Serial.println(myDFPlayer.readVolume());
menu_opcoes();
}

}





  delay(1);


}


void menu_opcoes()
{
Serial.println();
Serial.println(F("=================================================================================================================================="));
Serial.println(F("Commands:"));
Serial.println(F(" [1-3] To select the MP3 file"));
Serial.println(F(" [s] stopping reproduction"));
Serial.println(F(" [p] pause/continue music"));
Serial.println(F(" [+ or -] increases or decreases the volume"));
Serial.println(F(" [< or >] forwards or backwards the track"));
Serial.println();
Serial.println(F("================================================================================================================================="));
}
