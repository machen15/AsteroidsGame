Spaceship bob = new Spaceship(); //variable declarations
Star[] starryNight = new Star[500];
ArrayList <Asteroid> rock = new ArrayList <Asteroid>();
public void setup() 
{
  size(800,800);
  for(int i = 0; i < starryNight.length; i++)
  {
    starryNight[i] = new Star();
  }
   for(int i = 0; i < 40; i++)
 {
   rock.add(new Asteroid());
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
 for(int i = 0; i < rock.size(); i++)
 {
 rock.get(i).show();
 rock.get(i).move();
 float d = dist((float)bob.getX(), (float)bob.getY(), (float)rock.get(i).getX(),(float)rock.get(i).getY());
 if (d < 30)
  rock.remove(i);
 }
}
public void keyPressed()
{
  if(key == 'a') //counterclockwise
    bob.turn(-15);
  else if(key == 'd') //clockwise
    bob.turn(15);
  else if(key == 's') //accelerate to the left
    bob.accelerate(-0.3);
  else if(key == 'w') //accelerate to the right
    bob.accelerate(0.3);
  else if(key == 'h') //new location, zero speed
    bob.hyperspace();
}
