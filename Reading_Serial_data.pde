import processing.serial.*;
String myString1;
String myString2;
String myString3;
String myString4;
String myString5;
Serial myPort;
int lf = 10; 
int a=0;
int b=0;
int c=0;
int d=0;
int e=0;
String myString = null;
void setup() {
  printArray(Serial.list());
  // Open the port you are using at the rate you want:
  myPort = new Serial(this,"COM10", 9600);
  myPort.bufferUntil('\n');
  // Throw out the first reading, in case we started reading 
  // in the middle of a string from the sender.
  myString = myPort.readStringUntil(lf);
  myString = null;
}
void draw() {
while (myPort.available() > 0) {
    myString = myPort.readStringUntil(lf);
    if (myString != null) {
       myString1 = myString.substring(0,1); 
     a = int(myString1);
      
     myString2 = myString.substring(1,2); 
     b = int(myString2);
     
     myString3 = myString.substring(2,3); 
     c = int(myString3);
     
     myString4 = myString.substring(3,4); 
     d = int(myString4);
    
    myString5 = myString.substring(4,5); 
     e = int(myString5);
    }   
  }
  print(a);
  print(b);
  print(c);
  print(d);
  println(e);
}