Regler red,green,blue;
float r,g,b;

void drawlever()
{  
  r = map(red.getX(),950, 1050,0,255);
  g = map(green.getX(),950,1050,0,255);
  b = map(blue.getX(),950,1050,0,255);
  
  red.move();
  red.display();
  
  green.move();
  green.display();
  
  blue.move();
  blue.display();
  
}

class Regler 
{
  float posx, posy;
  float radius;
  
Regler(float posx, float posy)
{  
  this.posx = posx;
  this.posy = posy;
  this.radius = 10;
}

void display()
{
  ellipseMode(CENTER);
  fill(#1887F2);
  noStroke();

  ellipse(posx,posy,radius*2,radius*2);
  stroke(#0ACB35);
  strokeWeight(2);
  line(1000,posy,1100,posy);
  line(1000,posy,1100,posy);
  line(1000,posy,1100,posy);
}

void move()
{
  float d = dist(this.posx,this.posy,mouseX,mouseY);
  if ((mousePressed)&&(d <= radius*2)) 
  {
  this.posx = mouseX;
  }
  
  if(this.posx <= 1000)
  {
  this.posx = 1000;
  }
  else if (this.posx >= 1100)
  {
  this.posx = 1100;
  }
}
  public float getX()
  {
    return this.posx;
  }
}