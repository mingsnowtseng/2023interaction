void setup()
{
  size(400, 400, P3D); //Processing的3D功能
}

void draw()
{
  background(#B7E3FF);
  pushMatrix(); //備份矩陣
    translate(mouseX, mouseY);
    box(100); //3D的盒子或方塊
  popMatrix(); //還原矩陣
}
