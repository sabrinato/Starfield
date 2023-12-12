Particle [] bob;
void setup()
{
  size (400, 400);
  bob = new Particle [21];
  bob[0] = new OddballParticle();
  for (int i = 1; i < bob.length; i++){  
    bob[i] = new Particle();
  }
}
void draw()
{
  background(256);
  for (int i = 0; i < 21; i++){
    bob[i].move();
    bob[i].show();
  }
}
class Particle
{
  int myColor;
  double myX, myY, myAngle, mySpeed;
  
  Particle()
  {
    myX = 200.0;
    myY = 200.0; 
    myColor = color(#fff8f9);
    myAngle = 0.0;
    mySpeed = 0.0;
  }
  
  void move()
  {
    myX += (Math.cos(myAngle) * mySpeed);
    myY += (Math.sin(myAngle) * mySpeed);
    myAngle = ((double)(Math.random()*2)+1)*Math.PI;
    mySpeed = ((double)(Math.random()*10) +1);
  }
  
  void show()
  {
    myColor = color(#fff8f9);
    fill(myColor);
    ellipse((float)myX, (float)myY, 50, 50);
  }
}

class OddballParticle extends Particle 
{
    OddballParticle (){
      myX = 200.0;
      myY = 200.0; 
      myColor = color(170,100,56);
      myAngle = 5.0;
      mySpeed = 2.0;
    }
    void show(){
      fill(myColor);
    ellipse((float)myX, (float)myY, 50, 50);
    }
}
