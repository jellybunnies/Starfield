Particle[] bob;
void setup()
{
  background(0);
  size(400,400);
  bob = new Particle[1000];
   for(int i = 0; i < bob.length; i++)
   {
     bob[i] = new Particle();
     bob[0] = new OddballParticle();
   }
}
void draw()
{
  background(0);
  for(int i = 0; i < bob.length; i++)
  {
    bob[i].move();
    bob[i].show();
  }
}
class Particle
{
  double myX, myY, mySpeed, myAngle;
  int mySize, myColor;
  
  Particle()
  {
    myX = myY = 200;
    myAngle = Math.random()*2*Math.PI;
    mySpeed = Math.random()*10;
    myColor = color((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
    mySize = 5;
  }
  void move()
  {
    myX = myX + Math.cos(myAngle)*mySpeed;
    myY = myY + Math.sin(myAngle)*mySpeed;
  }
  void show()
  {
    fill(myColor);
    noStroke();
    rect((float)myX, (float)myY, mySize, mySize);
  }
}

class OddballParticle extends Particle
{
  OddballParticle()
  {
    myX = 195;
    myY = 195;
    
  }
  void move()
  {
    myX = myX + (int)(Math.random()*2)-.5;
    myY = myY + (int)(Math.random()*2)-.5;
  }
  void show()
  {
    fill(255);
    rect((float)myX, (float)myY, 20,100);
    fill(150,255,255);
    rect((float)myX, (float)myY + 20, 20,10);
    rect((float)myX, (float)myY + 40, 20,10);
    rect((float)myX, (float)myY + 60, 20,10);
    rect((float)myX, (float)myY + 80, 20,10);
  }
}


