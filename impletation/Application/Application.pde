import processing.serial.*;
Table table;
int lf = 10;    // Linefeed in ASCII
String myString = null;
Serial myPort;  // The serial port
String myString1;
String myString2;
String myString3;
String myString4;
String myString5;
String date;
String time;
int a=0;
int b=0;
int c=0;
int d=0;
int e=0;
String deg_thumb;
String deg_index;
String deg_middle;
String deg_ring;
String deg_little;
import controlP5.*;
ControlP5 cp5;
String text;
void buildBox()
{
    //box(10, 10, 60);
    noStroke();
      beginShape(QUADS);
// set the six covers positions
    //Z+ 
    fill(#ff00ff);
    vertex(-5, -30, 5);
    vertex(5, -30, 5);
    vertex(5, 30, 5);
    vertex(-5, 30, 5);

    //Z-
    fill(#ff00ff);
    vertex(-5, -30, -5);
    vertex(5, -30, -5);
    vertex(5, 30, -5);
    vertex(-5, 30, -5);

    //X-
    fill(#ff00ff);
    vertex(-5, -30, -5);
    vertex(-5, -30, 5);
    vertex(-5, 30, 5);
    vertex(-5, 30, -5);

    //X+
    fill(#ff00ff);
    vertex(5, -30, -5);
    vertex(5, -30, 5);
    vertex(5, 30, 5);
    vertex(5, 30, -5);

    //Y-
    fill(#ff00ff);
    vertex(-5, -30, -5);
    vertex(5, -30, -5);
    vertex(5, -30, 5);
    vertex(-5, -30, 5);

    //Y+
    fill(#ff00ff);
    vertex(-5, 30, -5);
    vertex(5, 30, -5);
    vertex(5, 30, 5);
    vertex(-5, 30, 5);

    endShape();
}

void setup() {
  table = new Table();
  table.addColumn("Date");
  table.addColumn("Time");
  table.addColumn("Thumb_finger");
  table.addColumn("Index_finger");
  table.addColumn("Middle_finger"); 
  table.addColumn("Ring_finger");
  table.addColumn("Little_finger"); 
  size(600,600,P3D);
  cp5 = new ControlP5(this);
  cp5.addTextfield("ID").setPosition(400, 400).setSize(100, 50).setAutoClear(false);
  cp5.addBang("Submit").setPosition(500, 400).setSize(50, 50);
  // List all the available serial ports
  printArray(Serial.list());
  // Open the port you are using at the rate you want:
  myPort = new Serial(this,"COM10", 9600);
  myPort.bufferUntil('\n');
  // Throw out the first reading, in case we started reading 
  // in the middle of a string from the sender.
  myString = myPort.readStringUntil(lf);
  myString = null;
}
void Submit() {
  println();
  print("this is the patient name:");
  text=cp5.get(Textfield.class, "ID").getText();
  print(text);
}
void draw() {
  int day = day();    // Values from 1 - 31
  int month = month();  // Values from 1 - 12
  int year = year();   // 2003, 2004, 2005, etc.
  int second = second();  // Values from 0 - 59
  int minute = minute();  // V    alues from 0 - 59
  int hour = hour();    // Values from 0 - 23
  background(#000000);
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
  // thumb finger
   pushMatrix();
    translate(150, 400, 0);
    fill(#ff00ff); // color
    stroke(255);
    sphere(20);
   if  (a==0)
   {   
   rotateX(0);
   deg_thumb = "lower than 15";
  }
   if  (a==1)
   {   
   rotateX(PI/12);
   deg_thumb = "between 15 and 30";
  }
  if (a==2)
  {
    rotateX(PI/6);
     deg_thumb = "between 30 and 45";
  }  
    if (a==3)
  {
    rotateX(PI/4);
    deg_thumb = "between 45 and 60";
  }  
    if (a==4)
  {
    rotateX(5*PI/12);
    deg_thumb = "between 60 and 75";
  }  
    if (a==5)
  {
    rotateX(PI/2);
    deg_thumb = "between 75 and 90";
  }    
    translate(0, -60, 0);
    scale(2, 2, 2);
     buildBox();
    
     popMatrix();
     pushMatrix();
    translate(200, 400, 0);
    fill(#ff00ff);
    stroke(255);
    sphere(20);
    translate(0, -60, 0);
    scale(2, 2, 2);
     buildBox();
     
     translate(0, -30, 0);
    fill(#ff00ff);
    stroke(255);
    sphere(8);
    // first joint of the index finger
  if  (b==0)
   {   
   rotateX(0);
   deg_index = "lower than 15";
  }
   if  (b==1)
   {   
   rotateX(PI/12);
   deg_index = "between 15 and 30";
  }
  if (b==2)
  {
    rotateX(PI/6);
    deg_index = "between 30 and 45";
  }  
    if (b==3)
  {
    rotateX(PI/4);
    deg_index = "between 45 and 60";
  }  
    if (b==4)
  {
    deg_index = "between 60 and 75";
    rotateX(5*PI/12);
  }  
    if (b==5)
  {
    deg_index = "between 75 and 90";
    rotateX(PI/2);
  }  
 
    translate(0, -30, 0);
    scale(1, 1, 1);
     buildBox();
     popMatrix();
    pushMatrix();
    translate(250, 400, 0);
    fill(#ff00ff);
    stroke(255);
    sphere(20);
    translate(0, -60, 0);
    scale(2, 2, 2);
     buildBox();
     
     translate(0, -30, 0);
    fill(#ff00ff);
    stroke(255);
    sphere(8);
    // first joint of the middle finger
  if  (c==0)
   {   
   deg_middle = "lower than 15";
   rotateX(0);
  }
   if  (c==1)
   { 
    deg_middle = "between 15 and 30"; 
   rotateX(PI/12);
  }
  if (c==2)
  {
    deg_middle = "between 30 and 45";
    rotateX(PI/6);
  }  
    if (c==3)
  {
    deg_middle = "between 45 and 60";
    rotateX(PI/4);
  }  
    if (c==4)
  {
    deg_middle = "between 60 and 75";
    rotateX(5*PI/12);
  }  
    if (c==5)
  {
    deg_middle = "between 75 and 90";
    rotateX(PI/2);
  }  
     
    translate(0, -30, 0);
    scale(1, 1, 1);
     buildBox();
     popMatrix();
     pushMatrix();
    translate(300, 400, 0);
    fill(#ff00ff);
    stroke(255);
    sphere(20);
   
    translate(0, -60, 0);
    scale(2, 2, 2);
     buildBox();
     
     translate(0, -30, 0);
    fill(#ff00ff);
    stroke(255);
    sphere(8);
    if  (d==0)
   {   
   rotateX(0);
   deg_ring = "lower than 15";
  }
   if  (d==1)
   {
   deg_ring = "between 15 and 30"; 
   rotateX(PI/12);
  }
  if (d==2)
  {
    deg_ring = "between 30 and 45"; 
    rotateX(PI/6);
  }  
    if (d==3)
  {
    deg_ring = "between 45 and 60"; 
    rotateX(PI/4);
  }  
    if (d==4)
  {
    deg_ring = "between 60 and 75"; 
    rotateX(5*PI/12);
  }  
    if (d==5)
  {
    deg_ring = "between 75 and 90"; 
    rotateX(PI/2);
  }  
    translate(0, -30, 0);
    scale(1, 1, 1);
     buildBox();
     popMatrix();
     pushMatrix();
    translate(350, 400, 0);
    fill(#ff00ff);
    stroke(255);
    sphere(20);
    if  (e==0)
   { 
   deg_little = "lower than 15";
   rotateX(0);
  }
   if  (e==1)
   {
   deg_little = "between 15 and 30"; 
   rotateX(PI/12);
  }
  if (e==2)
  {
    deg_little = "between 30 and 45"; 
    rotateX(PI/6);
  }  
    if (e==3)
  {
    deg_little = "between 45 and 60"; 
    rotateX(PI/4);
  }  
    if (e==4)
  {
    deg_little = "between 60 and 75"; 
    rotateX(5*PI/12);
  }  
    if (e==5)
  {
    deg_little = "between 75 and 90"; 
    rotateX(PI/2);
  }  
    translate(0, -60, 0);
    scale(2, 2, 2);
     buildBox();   
     popMatrix(); 
  date = year + "-" + month + "-" + day;
  time = hour + ":" + minute + ":" + second; 
  TableRow newRow = table.addRow();
  newRow.setString("Date", date);
  newRow.setString("Time", time);
  newRow.setString("Thumb_finger", deg_thumb);
  newRow.setString("Index_finger", deg_index);
  newRow.setString("Middle_finger", deg_middle);
  newRow.setString("Ring_finger", deg_ring);
  newRow.setString("Little_finger", deg_little);
  delay(1000);
  }
  String icon;
void keyPressed()
{
  if (key == CODED){
  if(keyCode == UP)
  {
 icon = date+"/" + text +".csv";
 saveTable(table, icon);
  exit();
  }
  }
}