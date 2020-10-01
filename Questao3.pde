float d = -20;
float theta = 0;
float linearD = d;
int lastCrossX;

void setup()
{
  size(800,600);
  smooth();
}

void drawCoordinates()
{
  strokeWeight(1.2);
  stroke(0,255,0);
  // linha vertical
  line(width/2,0,width/2,height);
  stroke(0,0,255);
  // linha horizontal
  line(0,height/2,width,height/2);
  strokeWeight(1);
  noStroke();
}


void draw()
{
  // Vai desenhar as coordenadas pintando cada um dos eixos e limpando para as configurações default
  drawCoordinates();
  // translada para que o eixo seja o centro no centro
  translate(width/2,height/2);
  
  strokeWeight(5);
  stroke(255,0,0);
  // coordenadas polares
  float x =  d * cos(radians(theta));
  float y =  d * sin(radians(theta));
   
  point(x,y);
  // faz com que o movimento seja anti-horario e demora 4 segundos para que uma semi circulo termine de ser pintado
  theta -= PI/(4 * frameRate) * 60;
  
  // mantendo o d linear para que a cada 90 graus sua distancia aumente em 2x
  d += 0.25 * (linearD / frameRate);
  
  // caso o ponto esteja cruzando o eixo x, exceto na primeira vez 
  if((y >= 0 && y <= 2) && millis() > 4000)
  {
    // como o range pode fazer com que a condição seja aceita
    // atribuir ao novo d linear caso tenha se passado por volta de 3 segundos
    if(millis() > lastCrossX + 3000)
    {
      linearD = d;
    }
         
    // salva o tempo da ultima vez que cruzou o eixo X
    lastCrossX = millis();
  } 
}
