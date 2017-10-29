void setup() {
   size(600,600,P3D);
}
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
void draw() {
  pushMatrix();
  translate(150, 400, 0);
    fill(#ff00ff); // color
    stroke(255);
    sphere(20);
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
        translate(0, -30, 0);
    scale(1, 1, 1);
     buildBox();
     popMatrix();
     pushMatrix();
    translate(350, 400, 0);
    fill(#ff00ff);
    stroke(255);
    sphere(20);
    translate(0, -60, 0);
    scale(2, 2, 2);
     buildBox();   
     popMatrix(); 
}