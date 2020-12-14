Spaceship bob = new Spaceship(); //variable declarations
Star[] starryNight = new Star[500];
ArrayList <Asteroid> rock = new ArrayList <Asteroid>();
ArrayList <Bullet> shots = new ArrayList <Bullet>();
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
 for(int i = 0; i < shots.size(); i++)
 {
 shots.get(i).move();
 shots.get(i).show();
   for(int j = 0; j < rock.size(); j++) // use different variables 
   {
 float d = dist((float)rock.get(j).getX(), (float)rock.get(j).getY(), (float)shots.get(i).getX(),(float)shots.get(i).getY());
 if (d < 30) 
    {
     rock.remove(j);
     shots.remove(i);
     break; // prevent out of bounds
    }
   }
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
  else if(key == ' ') //spacebar = shoot
    shots.add(new Bullet(bob)); //bob is the spaceship
  else if(key == '1') // new asteroids
    rock.add(new Asteroid()); 
}
