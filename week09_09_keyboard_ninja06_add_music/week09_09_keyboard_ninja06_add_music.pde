//week09_07_keyboard_ninja_void_keyPress_appleKey
import processing.sound.*;
SoundFile sound1,sound2,sound3;
PImage board;
void setup()
{
  size(600,400);
  board = loadImage("board.png");
  randomApple();
  sound1 = new SoundFile(this,"Intro Song_Final.mp3");
  sound2 = new SoundFile(this,"Gong.mp3");
  sound3 = new SoundFile(this,"In Game Music.mp3");
  sound1.play();
}
float appleX = 100,appleY = 500,appleVX = 5,appleVY = -30;
char appleKey;
int score = 0;
void randomApple()
{
  appleX  = random(100,500);
  appleY = 500;
  if(appleX<300)appleVX = random(0,8);
  else appleVX = random(-8,0);
  appleVY  = random(-30,-20);
  appleKey = (char)('a'+int(random(26)));
}

void keyPressed()
{
  if(state==0) state = 1;
  if(state==2){
  if(key==appleKey)
   {
     score += 100;
   }
   else
   {
     score-=20;
   }
  }
}
int state = 0;
int countdow = 60*4;
void draw()
{
  background(board);
  textSize(50);
  textAlign(CENTER,CENTER);
  fill(255,255,0);
  if(state==0)text("Press Any Key to Start",300,200);
  else if (state==1)
  {
    textSize(100);
    countdow--;
    if(countdow%60 ==0)
    {
      sound2.stop();
      sound2.play();
    }
    if(countdow>60*3)text("3",300,200);
    else if (countdow>60*2)text("2",300,200);
    else if (countdow>60*1)text("1",300,200);
    else if (countdow>0)text("GO",300,200);
    else{ 
      state = 2;
      sound2.stop();
      sound3.loop();
    }
  }else{
    textSize(50);
    textAlign(CENTER,CENTER);
    fill(255,255,0);
    text("Score:"+score,400,50);
    fill(255,0,0);
    ellipse(appleX,appleY,80,80);
    fill(255,255,0);
    text(appleKey,appleX,appleY);
    appleX += appleVX;
    appleY += appleVY;
    appleVY += 0.98;
  if(appleX > 600 || appleX < 0 || appleY > 550)
  {
    randomApple();
  }
  }
}
