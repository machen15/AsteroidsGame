class Spaceship extends Floater  
{   
    public Spaceship() {
      corners = 4;  
      xCorners = new int[corners];   
      yCorners = new int[corners]; 
      xCorners[0] = -8;
      yCorners[0] = -8;
      xCorners[1] = 16;
      yCorners[1] = 0;
      xCorners[2] = -8;
      yCorners[2] =  8;
      xCorners[3] = -4;
      yCorners[3] =  0;
      myColor = color(255);   
      myCenterX = myCenterY = 250; //holds center coordinates   
      myXspeed = myYspeed = 0; //holds the speed of travel in the x and y directions   
      myPointDirection = (int)(Math.random() * 360); //holds current direction the ship is pointing in degrees    
    }
    public void hyperspace()
    {
      myXspeed = 0;
      myYspeed = 0;
      myCenterX = (int)(Math.random() * 500);
      myCenterY = (int)(Math.random() * 450);
      myPointDirection = (int)(Math.random() * 360);
    }
}
