//week11_06_class_Card_Card_x_y_draw
class Card{
  int x,y;
  Card(int _x,int _y){
    x = _x; y = _y;
  }
  void draw(){
    rect(x,y,100,150);
  }
}
Card cardl = new Card(100,100);
void setup()
{
  size(500,400);
}
void draw(){
  cardl.draw();
}