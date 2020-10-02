float posX, posY;
float diameter;
float theta;
float vector;

void setup() {
  size( 800, 600 );
  posX = posY = 0; 
  diameter = 50;
  theta = 0;
  vector = 0;
}

void draw() { 
  vector =  (1.5 * diameter);
  theta -= PI/(2 * frameRate) * 60;
  
  translate( width / 2, height / 2 );
  fill(169);
  background(169);
  noStroke();
    
 
  stroke(0,0,255);
  // circulo maior
  rotate(radians(theta));
  circle(0,0, 4 * diameter);
  translate( 1.05 * diameter, 1.05 * diameter );
  rotate(radians(theta));
  // circulo menor
  circle(posX,posY, diameter);
  
   scale(10);
   noStroke();
   fill(255,0,0);
   // fix scale position
   circle(0,((diameter/2))/10, 0.5);
   noFill();

   
  
  stroke(0,0,255);
} 
