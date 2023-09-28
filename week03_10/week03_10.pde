void setup()
{
  size(300, 300);
  colorMode(HSB, 360, 100, 100);
  chooseColor();
}
float h, s, b;
void chooseColor()
{
  h = random(360);
  s = random(38);
  b = random(99);
}
void draw()
{
  background(220, 38 ,99);
  for(int i=0; i<5; i++)
  {
    for(int j=0; j<5; j++)
    {
      fill(h, s, b);
      ellipse(30+j*60, 30+i*60, 60 ,60);
    }
  }
}
