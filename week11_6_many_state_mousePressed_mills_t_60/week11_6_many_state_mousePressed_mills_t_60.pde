int state = 0;
void setup()
{
  size(400, 400);
  textSize(50);
}
int x=50, y=50, t=100;
void draw()
{
  if(state==0)
  {
    background(255); //開頭，白色場景
    fill(0); text("Click to Star", 80, 200);
  }
  else if(state==1) //第1關，紅色場景
  {
    background(255, 0, 0);
    fill(255); rect(300, 50, 50, 50);
    fill(128); rect(x, y, 50, 50);
    t=100;
  }
  else if(state==2) //第2關，藍色場景
  {
    background(0, 0, 255);
    fill(255, 255, 0); text("Wait "+ t, 80 ,200);
    t--;
    if(t==0) state=0;
  }
}
void mousePressed()
{
  if(state==0) state=1;
}
void keyPressed()
{
  if(state==1 && keyCode==RIGHT)
  {
    x += 10;
    if(x==300) state=2; //當白色方格重疊到灰色的，進到下一關
  }
}
