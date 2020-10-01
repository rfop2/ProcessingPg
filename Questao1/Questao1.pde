// vetores para localidade, velocidade e gravidade
PVector location;
PVector velocity;
PVector gravity;

void setup(){
  size(800,680);
  location = new PVector(16,(height/2 - 16));
  velocity = new PVector(6,10);
  gravity = new PVector(0,0.5);
  
  
  
}

void draw(){
  // cor vermelha em baixo
  background(255,0,0);
  // cor cinza escuro em cima
  fill(105);
  rect(0, 0, width,height/2);
  
  location.add(velocity);
  
  velocity.add(gravity);
  
  if((location.x > width) || (location.x < 0 )){
    // modifica a velocidade com valor negativo para ela mudar de direcao
    velocity.x = velocity.x * -1;
  }
  
  if(location.y > height/2 ){
    // modifica a velocidade com valor negativo para ela mudar de direcao
    velocity.y = velocity.y * - 0.95;
    location.y = height/2;
  }
  
  noStroke();
  strokeWeight(2);
  fill(0,0,255);
  // circulo com raio 10
  ellipse(location.x, location.y, 30, 30);
  
 
  
}
