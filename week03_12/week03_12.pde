void setup()
{
  size(300, 300);
  colorMode(HSB, 360, 100, 100);
  chooseColor();
}
void mousePressed()
{
  chooseColor();
}
int I, J;
float h, s, b, dh, ds, db;
void chooseColor()
{
  h = random(360);
  s = random(38);
  b = random(99);
  I = int(random(5));
  J = int(random(5));
  dh = random(-10, +10);
  ds = random(-10, +10);
  db = random(-10, +10);
}
void draw()
{
  background(220, 38 ,99);
  for(int i=0; i<5; i++)
  {
    for(int j=0; j<5; j++)
    {
      if(i==I && j==J) fill (h+dh, s+ds, b+db);
      else fill(h, s, b);
      ellipse(30+j*60, 30+i*60, 60 ,60);
    }
  }
}
