//互動模式
void setup() //設定
{
  size(500,500);
  background(255);
}

void draw() //畫圖，每秒畫60次
{
  if(mousePressed) //如果滑鼠有按下去
  {
    line(mouseX, mouseY, pmouseX, pmouseY);
    //畫線(原本滑鼠的座標到pmouseX,pmouseY的位置)
  }
}
