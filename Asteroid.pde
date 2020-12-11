class Asteroid extends Floater {
 private double rotSpeed;
 public Asteroid () {
    corners = 7;
    
    xCorners = new int[corners];
    yCorners = new int[corners];
    
    xCorners[0] = -10;
    yCorners[0] = -10;
    
    xCorners[1] = -5;
    yCorners[1] = 10;
    
    xCorners[2] = 18;
    yCorners[2] = 10;
    
    xCorners[3] = 25;
    yCorners[3] = 5;
    
    xCorners[4] = 20;
    yCorners[4] = -10;
    
    xCorners[5] = 10;
    yCorners[5] = -20;
    
    xCorners[6] = -8;
    yCorners[6] = -15;
    
   myColor = color(160,155,155);
   myCenterX = (int)(Math.random() * 800); 
   myCenterY = (int)(Math.random() * 800);
   myXspeed = myYspeed = 0.3; 
   myPointDirection = (int)(Math.random() * 360); 
   accelerate(0.5);
 
   if(Math.random() <= 0.5)
   rotSpeed = 1.5;
   else
   rotSpeed = -1.5;
   }
  public int getX() {return (int)myCenterX;}
  public int getY() {return (int) myCenterY;}
  
  public void move() 
  {
    turn(rotSpeed);
    super.move();
  }
}
