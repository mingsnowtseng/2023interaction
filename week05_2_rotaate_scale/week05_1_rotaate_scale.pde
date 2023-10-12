void setup()
{
  size(400, 400, P3D); //Processing的3D功能
}

void draw()
{
  background(#B7E3FF);
  pushMatrix(); //備份矩陣
    translate(mouseX, mouseY);
    rotateY(radians(mouseX)); //對Y軸轉
    fill(0, 50, 50); //盒子的面填色
    box(100); //3D的盒子或方塊
    
    noFill(); //面不填色
    scale(2); //放大2倍
    box(100); // 盒子大小100，但上面還有放大2倍，所以是200
  popMatrix(); //還原矩陣
}
