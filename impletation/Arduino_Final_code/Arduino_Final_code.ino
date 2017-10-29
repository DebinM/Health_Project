int deg_index;
int a,b,c,d,e,f;
void setup() {
  Serial.begin(9600);
  pinMode(13,OUTPUT);
  pinMode(12,OUTPUT);
  pinMode(11,OUTPUT);
  pinMode(8,OUTPUT);
  pinMode(9,OUTPUT);
  pinMode(10,OUTPUT);
  pinMode(7,OUTPUT);
  pinMode(6,OUTPUT);
  pinMode(5,OUTPUT);
  pinMode(4,OUTPUT);
  pinMode(3,OUTPUT);
  pinMode(2,OUTPUT);
  // put your setup code here, to run once:

}

void loop() {
  int val_thumb = analogRead(A0);
  int val_index = analogRead(A1);
  int val_middle = analogRead(A2);
  int val_ring = analogRead(A3);
  int val_little = analogRead(A4);
  Serial.print("thumb=");
  Serial.print(val_thumb);
  int deg_thumb = map(val_thumb,180,315,90,0); 
  int deg_index = map(val_index,142,319,90,0);
  int deg_middle = map(val_middle,192,339,90,0);
  int deg_ring = map(val_ring,190,315,90,0);
  int deg_little = map(val_little,110,244,90,0);
//  Serial.print("deg_thumb=");
//  Serial.print(deg_thumb); 
//  Serial.print("index=");
//  Serial.print(val_index);
//  Serial.print("deg_index=");
//  Serial.print(deg_index);
//  Serial.print("middle=");
//  Serial.print(val_middle);
//  Serial.print("deg_middle=");
//  Serial.print(deg_middle);
  Serial.print("ring=");
  Serial.print(val_ring);
//  Serial.print("deg_ring=");
//  Serial.println(deg_ring);
  Serial.print("little=");
  Serial.println(val_little);
//  Serial.print("deg_little=");
//  Serial.println(deg_little);
//  deg_index = map(val_index,180,400,90,0); //index finger
//  Serial.print("deg_index=");
//  Serial.println(deg_index);
  
  if(deg_thumb<15)
  {
    a=0;
    analogWrite(13,180);
    analogWrite(12,0);
    analogWrite(11,0);
  }
  else if (deg_thumb<30 && deg_thumb > 15)
  {
    a=1;
    analogWrite(13,180);
    analogWrite(12,90);
    analogWrite(11,0);
  }
  else if (deg_thumb<45 && deg_thumb > 30)
  {
    a=2;
    analogWrite(13,180);
    analogWrite(12,180);
    analogWrite(11,0);
  }
  else if (deg_thumb<60 && deg_thumb > 45)
  {
    a=3;
    analogWrite(13,0);
    analogWrite(12,180);
    analogWrite(11,0);
  }
  else if (deg_thumb<75 && deg_thumb > 60)
  {
    a=4;
    analogWrite(13,0);
    analogWrite(12,180);
    analogWrite(11,180);
  }
  else
  {
    a=5;
    analogWrite(13,0);
    analogWrite(12,0);
    analogWrite(11,180);
  }
   if(deg_index<15)
  {
    b=0;
    analogWrite(10,180);
    analogWrite(9,0);
    analogWrite(8,0);
  }
  else if (deg_index<30 && deg_index > 15)
  {
    b=1;
    analogWrite(10,180);
    analogWrite(9,90);
    analogWrite(8,0);
  }
  else if (deg_index<45 && deg_index > 30)
  {
    b=2;
    analogWrite(10,180);
    analogWrite(9,180);
    analogWrite(8,0);
  }
  else if (deg_index<60 && deg_index > 45)
  {
    b=3;
    analogWrite(10,0);
    analogWrite(9,180);
    analogWrite(8,0);
  }
  else if (deg_index<75 && deg_index > 60)
  {
    b=4;
    analogWrite(10,0);
    analogWrite(9,180);
    analogWrite(8,180);
  }
  else
  {
    b=5;
    analogWrite(10,0);
    analogWrite(9,0);
    analogWrite(8,180);
  }
  //middle finger
    if(deg_middle<15)
  {
    c=0;
    analogWrite(7,180);
    analogWrite(6,0);
    analogWrite(5,0);
  }
  else if (deg_middle<30 && deg_middle > 15)
  {
    c=1;
    analogWrite(7,180);
    analogWrite(6,90);
    analogWrite(5,0);
  }
  else if (deg_middle<45 && deg_middle > 30)
  {
    c=2;
    analogWrite(7,180);
    analogWrite(6,180);
    analogWrite(5,0);
  }
  else if (deg_middle<60 && deg_middle > 45)
  {
    c=3;
    analogWrite(7,0);
    analogWrite(6,180);
    analogWrite(5,0);
  }
  else if (deg_middle<75 && deg_middle > 60)
  {
    c=4;
    analogWrite(7,0);
    analogWrite(6,180);
    analogWrite(5,180);
  }
  else
  {
    c=5;
    analogWrite(7,0);
    analogWrite(6,0);
    analogWrite(5,180);
  }
  //ring ringer
      if(deg_ring<15)
  {
    d=0;
    analogWrite(4,180);
    analogWrite(3,0);
    analogWrite(2,0);
  }
  else if (deg_ring<30 && deg_ring > 15)
  {
    d=1;
    analogWrite(4,180);
    analogWrite(3,90);
    analogWrite(2,0);
  }
  else if (deg_ring<45 && deg_ring > 30)
  {
    d=2;
    analogWrite(4,180);
    analogWrite(3,180);
    analogWrite(2,0);
  }
  else if (deg_ring<60 && deg_ring > 45)
  {
    d=3;
    analogWrite(4,0);
    analogWrite(3,180);
    analogWrite(2,0);
  }
  else if (deg_ring<75 && deg_ring > 60)
  {
    d=4;
    analogWrite(4,0);
    analogWrite(3,180);
    analogWrite(2,180);
  }
  else
  {
    d=5;
    analogWrite(4,0);
    analogWrite(3,0);
    analogWrite(2,180);
  }
   if(deg_little<15)
  {
    e=0;
  }
  else if (deg_little<30 && deg_little > 15)
  {
    e=1;
  }
  else if (deg_little<45 && deg_little > 30)
  {
    e=2;
  }
  else if (deg_little<60 && deg_little > 45)
  {
    e=3;
  }
  else if (deg_little<75 && deg_little > 60)
  {
    e=4;
  }
  else
  {
    e=5;
  }
  // put your main code here, to run repeatedly:
Serial.print(a);
//Serial.print(",");
Serial.print(b);
//Serial.print(",");
Serial.print(c);
//Serial.print(",");
Serial.print(d);
//Serial.print(",");
Serial.println(e);
delay(1000);
}
