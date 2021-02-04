int limit = 700;
public void setup()
{
  size(500,500);
}
public void draw()
{
  background(0);
  fill(250);
  noStroke();
  sierpinski(28,500,450);
}
public void mouseDragged()
{
  if(mouseX > 1){
    limit = mouseX;
  }

}
public void sierpinski(int x, int y, int len) 
{
  if (len < limit){
    triangle(x,y, x+len,y,x+len/2,y-len);
  }
  else{
    sierpinski(x,y,len/2);
    sierpinski(x+len/2,y,len/2);
    sierpinski(x+len/4,y-len/2,len/2);
  }
}
