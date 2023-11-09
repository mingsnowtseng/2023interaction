PImage img;
int [][] pos = {{93,490},{246,524},{178,524},{161,490},{151,457},{195,491},{229,491},{263,491},{323,456},{298,490},{333,491},
                {366,491},{315,525},{281,524},{358,457},{392,456},{82,456},{186,456},{128,491},{220,456},{288,457},{212,524},
                {119,456},{145,524},{253,456},{110,525}};
void setup()
{
  size(800, 600);
  img = loadImage("keyboard.png");
  rectMode(CENTER); //用中心點畫正方形。
}
void draw()
{
  background(#FFFFF2);
  image(img, 0, 600-266);
  fill(255,0,0, 128); //128是透明度，半透明紅色
  rect(mouseX, mouseY, 28, 30, 5);
  fill(0,255,0,  128); //半透明綠色
  for(int i=0; i<26; i++)
  {
    if(pressed[i]) rect(pos[i][0], pos[i][1], 28, 30, 5);
  }
}
boolean [] pressed = new boolean[26]; //Java的陣列宣告，都是0或是false
void keyPressed()
{
  if(key>='a' && key<='z') pressed[key-'a'] = true;
}
void keyReleased()
{
  if(key>='a' && key<='z') pressed[key-'a'] = false;
}
void mousePressed()
{
  println(mouseX, mouseY); 
  //定位, 印出滑鼠的座標
}
