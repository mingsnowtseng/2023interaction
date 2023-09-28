//創造一個點
void setup()
{
  size(500, 500);
  dx = random(-1, +1); //在-1和+1之間取一個亂數，讓點移動
  dy = random(-1, +1); //在-1和+1之間取一個亂數，讓點移動
}
float x=250, y=250; //位置
float dx=1, dy=1;
void draw()
{
  background(0); //背景黑色
  ellipse(x, y, 5, 5);
  x += dx; //移動
  y += dy;
  if(x<0 || x>500) dx = -dx;
  if(y<0 || y>500) dy = -dy;
}
