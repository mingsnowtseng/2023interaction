//創造一個點
void setup()
{
   size(500, 500);
  for(int i=0; i<20; i++)
  {
    x[i] = random(500);
    y[i] = random(500);
    dx[i] = random(-1, +1); //在-1和+1之間取一個亂數，讓點移動
    dy[i] = random(-1, +1); //在-1和+1之間取一個亂數，讓點移動
  }
}
float [] x = new float[20];
float [] y = new float[20];
float [] dx = new float[20];
float [] dy = new float[20];
void draw()
{
  background(0); //背景黑色
  for(int i=0; i<20; i++)
  {
    ellipse(x[i], y[i], 5, 5);
    x[i] += dx[i]; //移動
    y[i] += dy[i];
    if(x[i]<0 || x[i]>500) dx[i] = -dx[i];
    if(y[i]<0 || y[i]>500) dy[i] = -dy[i];
  }
}