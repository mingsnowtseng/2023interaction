//互動模式
void setup() //設定
{
  size(500,500);
  background(50,50,150);
}

void draw() //畫圖，每秒畫60次
{
  ellipse(mouseX, mouseY, 8, 8);
}
