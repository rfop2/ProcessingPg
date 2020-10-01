float x, y;
float angle1 = 0.0;
float angle2 = 0.0;
float segLength = 100;
float veloX;
float veloY;

void setup() {
  size(800, 600);
  strokeWeight(30);
  stroke(255, 160);
  
  x = width * 0.5;
  y = height * 0.5;
  
  veloX=0;
  veloY=0;
}

void draw() {
  background(135,206,235);
  
  veloX = veloX + 2;
  veloY = veloY + -1;
  
  
  arm();
  
  if(degrees(angle2)*-1 >= 150){
    init();
  }
  
}

void init(){
   x = width * 0.5;
   y = height * 0.5;
   
   veloX=0;
   veloY=0;
}

void arm(){
  angle1 = (veloX/float(width) - 0.5) * -PI;
  angle2 = (veloY/float(height) - 0.5) * PI;
  
  print(degrees(angle2)*-1 + "\n");
 
  pushMatrix();
  segment1(x, y, angle1); 
  popMatrix();
  
  pushMatrix();
  segment2(x, y, angle2);
  popMatrix();
}


void segment1(float x, float y, float a) {
  translate(x, y);
  rotate(a);
  line(0, 0, 70, 0);
}


void segment2(float x, float y, float a) {
  translate(x, y);
  rotate(a);
  line(0, 0, 60, 0);
}
