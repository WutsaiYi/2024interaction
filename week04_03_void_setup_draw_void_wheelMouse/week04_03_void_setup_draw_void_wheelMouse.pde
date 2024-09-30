//week04_03_void_setup_draw_void_wheelMouse
PShape taiwan, taiwan2;
void setup()
{
  size(500,500);
  taiwan = loadShape("Taiwan-icon.svg");
  taiwan2 = loadShape("tw.svg");
}
float taiwanScale = 1;
//PImage img = loadImage("image.jpg");
void draw()
{
  background(#92C2F5);
  pushMatrix();
    scale(10*taiwanScale);
    shape(taiwan);
  popMatrix();
  pushMatrix();
    scale(0.5*taiwanScale);
    shape(taiwan2);
  popMatrix();
}
void mouseWheel(MouseEvent e)
{
  float d = e.getCount();
  if(d>0)taiwanScale *=1.1;
  else taiwanScale *=0.9;
}