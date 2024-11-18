//week11_05_ArrayList_class_Card_draw
class Card
{
  int x,y;
  void draw(){
    rect(x,y,100,150);  
 }
}
Card cardl = new Card();
void setup()
{
  size(500,400);
  cardl.x = 100;
  cardl.y = 100;
}
void draw()
{
  cardl.draw();
}
