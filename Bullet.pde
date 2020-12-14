class Bullet extends Floater {
  public Bullet (Spaceship ship)
  {
    myCenterX = ship.getX();
    myCenterY = ship.getY();
    myXspeed = ship.getXspeed();
    myYspeed = ship.getYspeed();
    myPointDirection = ship.getPointDirection();
    accelerate(6);
  }
  public double getX(){return myCenterX;}
  public double getY(){return myCenterY;}
    
  public void show() 
  {
    fill(255);
    ellipse((float)myCenterX, (float)myCenterY, 10, 10);
  }
  public void move()
  {
    myCenterX += myXspeed;    
    myCenterY += myYspeed; 
  }
}
