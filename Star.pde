class Star 
{
  private int myX, myY, myColor, mySize;
  public Star() 
  {
    myX = (int)(Math.random()*800);
    myY = (int)(Math.random()*800);
    myColor = color((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
    mySize = (int)(Math.random()*5) + 1;
  }
 
  public void show()
  {
    fill(myColor);
    stroke(myColor);
    ellipse(myX, myY, mySize, mySize);
  }
}
