int deg_index;

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
  int deg_thumb = map(val_thumb,195,315,90,0); 
  int deg_index = map(val_index,140,330,90,0);
  int deg_middle = map(val_middle,165,350,90,0);
  int deg_ring = map(val_ring,200,350,90,0);
  int deg_little = map(val_little,105,275,90,0);
  Serial.print("deg_thumb=");
  Serial.print(deg_thumb); 
  Serial.print("index=");
  Serial.print(val_index);
  Serial.print("deg_index=");
  Serial.print(deg_index);
  Serial.print("middle=");
  Serial.print(val_middle);
  Serial.print("deg_middle=");
  Serial.print(deg_middle);
  Serial.print("ring=");
  Serial.print(val_ring);
  Serial.print("deg_ring=");
  Serial.println(deg_ring);
  Serial.print("little=");
  Serial.print(val_little);
  Serial.print("deg_little=");
  Serial.println(deg_little);
//  deg_index = map(val_index,180,400,90,0); //index finger
//  Serial.print("deg_index=");
//  Serial.println(deg_index);
  delay(500);
  if(deg_thumb<30)
  {
    analogWrite(13,180);
    analogWrite(12,0);
    analogWrite(11,0);
  }
  else if (deg_thumb<60 && deg_thumb > 30)
  {
    analogWrite(13,0);
    analogWrite(12,180);
    analogWrite(11,0);
  }
  else
  {
    analogWrite(13,0);
    analogWrite(12,0);
    analogWrite(11,180);
  }
  if(deg_index<30)
  {
    analogWrite(10,180);
    analogWrite(9,0);
    analogWrite(8,0);
  }
  else if (deg_index<60 && deg_index > 30)
  {
    analogWrite(10,0);
    analogWrite(9,180);
    analogWrite(8,0);
  }
  else
  {
    analogWrite(10,0);
    analogWrite(9,0);
    analogWrite(8,180);
  }
  if(deg_middle<30)
  {
    analogWrite(7,180);
    analogWrite(6,0);
    analogWrite(5,0);
  }
  else if (deg_middle<60 && deg_middle > 30)
  {
    analogWrite(7,0);
    analogWrite(6,180);
    analogWrite(5,0);
  }
  else
  {
    analogWrite(7,0);
    analogWrite(6,0);
    analogWrite(5,180);
  }
   if(deg_ring<30)
  {
    analogWrite(4,180);
    analogWrite(3,0);
    analogWrite(2,0);
  }
  else if (deg_ring<60 && deg_ring > 30)
  {
    analogWrite(4,0);
    analogWrite(3,180);
    analogWrite(2,0);
  }
  else
  {
    analogWrite(4,0);
    analogWrite(3,0);
    analogWrite(2,180);
  }
  // put your main code here, to run repeatedly:

}
