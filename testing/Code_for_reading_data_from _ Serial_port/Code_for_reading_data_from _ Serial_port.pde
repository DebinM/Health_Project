import processing.serial.*;

int lf = 10;    // Linefeed in ASCII
String myString = null;
Serial myPort;  // The serial port
String myString1;
String myString2;
String myString3;
String myString4;
String myString5;
int a=0;
int b=0;
int c=0;
int d=0;
int e=0;

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
  size(600,600,P3D);
  // List all the available serial ports
  printArray(Serial.list());
  // Open the port you are using at the rate you want:
  myPort = new Serial(this,"COM3", 9600);
  myPort.bufferUntil('\n');
  // Throw out the first reading, in case we started reading 
  // in the middle of a string from the sender.
  myString = myPort.readStringUntil(lf);
  myString = null;
}

void draw() {
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
  }
   if  (a==1)
   {   
   rotateX(PI/6);
  }
  if (a==2)
  {
    rotateX(PI/4);
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
  if (b==0)
  {
    rotateX(0);
  }  
  if (b==1)
  {
    rotateX(PI/6);
  }
    if (b==2)
  {
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
   rotateX(0);
    //rotateY(PI/12.0);
  }
  if (c==1)
  {
    rotateX(PI/6);
  }  
  if (c==2)
  {
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
    //rotateY(PI/12.0);
  }
  if (d==1)
  {
    rotateX(PI/4);
  }
  
  if (d==2)
  {
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
  if (e==0)
  {
    rotateX(0);
  }  
  if (e==1)
  {
    rotateX(PI/6);
  }
    if (e==2)
  {
    rotateX(PI/4);
  }
    translate(0, -60, 0);
    scale(2, 2, 2);
     buildBox();   
     popMatrix(); 
      
}