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

void keyPressed()
{
  if(key=='1') stroke(150,50,50); //按下數字1，筆的顏色變成深紅
  if(key=='2') stroke(150,150,50); //按下數字2，筆的顏色變成青綠
  if(key=='3') stroke(50,50,150); //按下數字3，筆的顏色變成深藍
  if(key=='s'||key=='S') save("output.png"); //存檔
}
