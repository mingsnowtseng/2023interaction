//創造一個點
void setup()
{
  size(500, 500);
}
float x=250, y=250; //位置
float dx=1, dy=1;
void draw()
{
  ellipse(x, y, 5, 5);
  x += dx; //移動
  y += dy;
}
