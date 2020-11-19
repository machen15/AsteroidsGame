Spaceship bob = new Spaceship();
Star[] starryNight = new Star[200];
public void setup() 
{
  size(500,500);
  for(int i = 0; i < starryNight.length; i++)
  {
    starryNight[i] = new Star();
  }
}
public void draw() 
{
 background(0);
 for(int i = 0; i < starryNight.length; i++)
  {
    starryNight[i].show();
  }
 bob.show();
 bob.move();
}
public void keyPressed()
{
  if(key == 'a') //counterclockwise
    bob.turn(-15);
  else if(key == 'd') //clockwise
    bob.turn(15);
  else if(key == 's') //accelerate
    bob.accelerate(0.3);
  else if(key == 'w') //new location, zero speed
    bob.hyperspace();
}

