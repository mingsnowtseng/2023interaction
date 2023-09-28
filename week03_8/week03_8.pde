void setup()
{
  size(500, 500);
  colorMode(HSB, 360, 100, 100); //H:360度, S:0~100%, B:0~100%
}
void draw()
{
  background(frameCount%360, 54, 99);
  //以這個為基準，依序變成不同色調。
}
