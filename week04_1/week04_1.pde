void setup()
{
  size(400, 400);
}
int [][] card = new int [8][11];
void draw()
{
  background(255);
  for(int i=0; i<8; i++)
  {
    for(int j=0; j<11; j++)
    {
      rect(j*50, i*50, 50, 50);
    }
  }
}
