public void setup()
{
  size(1000, 800);
}
public void draw()
{
  background(0);
  sierpinski(0, 600, 1000);
  
}
public void mouseDragged()//optional
{

}
public void sierpinski(int x, int y, int len) 
{
  if (len <= 15) {
      triangle(x, y, x + len/2, y - len/2, x + len, y);
  } else {
    fill((int)((Math.random()*256)+100), (int)((Math.random()*256)+100), (int)((Math.random()*256)+100));
    sierpinski(x, y, len/2);
    sierpinski(x + len/2, y, len/2);
    sierpinski(x + len/4, y - len/4 , len/2);
  }
}
