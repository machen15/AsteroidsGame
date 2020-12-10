class Spaceship extends Floater 
{   
    public Spaceship() {
      corners = 4;    
      xCorners = new int[corners];   
      yCorners = new int[corners]; 
      
      xCorners[0] = -16;
      yCorners[0] = -16;
      
      xCorners[1] = 32;
      yCorners[1] = 0;
      
      xCorners[2] = -16;
      yCorners[2] =  16;
      
      xCorners[3] = -8;
      yCorners[3] =  0;
      myColor = color(255);   
      myCenterX = myCenterY = 250; //holds center coordinates   
      myXspeed = myYspeed = 0; //holds the speed of travel in the x and y directions   
      myPointDirection = (int)(Math.random() * 360); //holds current direction the ship is pointing in degrees    
    }
    public double getX(){return myCenterX;}
    public double getY(){return myCenterY;}
    public double getPointDirection(){return myPointDirection;}
    public double getXspeed(){return myXspeed;}
    public double getYspeed(){return myYspeed;}
    
    public void hyperspace()
    {
      myXspeed = 0;
      myYspeed = 0;
      myCenterX = (int)(Math.random() * 800);
      myCenterY = (int)(Math.random() * 750);
      myPointDirection = (int)(Math.random() * 360);
    }
}
