void setup()
{
  size(500, 500);
  for(int i=0; i<N; i++)
  {
    x[i] = random(500);
    y[i] = random(500);
    dx[i] = random(-1, +1); //在-1和+1之間取一個亂數，讓點移動
    dy[i] = random(-1, +1); //在-1和+1之間取一個亂數，讓點移動
  }
}
int N = 35;
float [] x = new float[N];
float [] y = new float[N];
float [] dx = new float[N];
float [] dy = new float[N];
void draw()
{
  background(0); //背景黑色
  for(int i=0; i<N; i++)
  {
    ellipse(x[i], y[i], 5, 5);
    for(int k=0; k<N; k++)
    {
       stroke(60, 60, 0); //線的顏色
       if(dist(x[i],y[i], x[k], y[k])<100)
         line(x[i],y[i], x[k], y[k]);
    }
    x[i] += dx[i]; //移動
    y[i] += dy[i];
    if(x[i]<0 || x[i]>500) dx[i] = -dx[i];
    if(y[i]<0 || y[i]>500) dy[i] = -dy[i];
    
  }
}
