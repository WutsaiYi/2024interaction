//week13_05_obj_mtl_gundam_loadShape_shape_obj_pushMatrix_scale_t
PShape gundam;
void setup()
{
  size(500,500,P3D);
  gundam = loadShape("Gundam.obj");
}
void draw()
{
  background(#BBFF81);
  pushMatrix();
  translate(mouseX,mouseY);
  rotateY(radians(frameCount));
  rotate(radians(180));
  scale(10,10,10);
  shape(gundam,0,0);
  popMatrix();
}
