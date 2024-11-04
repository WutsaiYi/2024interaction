//week09_03_processing_sound聲音相關 使用音樂相關的library 函式庫
//Sketch-Library-Massage Libraries 找sound可找到Sound 函式庫(Processing 基金會做的) 安裝!
//File--Examples,選Libraries核心函式庫 剛剛裝的sound的範例
//我們自己寫最精簡的版本
import processing.sound.*;
SoundFile sound;

void setup()
{
  size(500,500);
  sound = new SoundFile(this,"In Game Music.mp3");
  sound.loop();
}
void draw()
{
  
}
