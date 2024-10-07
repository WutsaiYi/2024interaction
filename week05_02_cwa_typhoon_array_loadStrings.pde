//week05_02_cwa_typhoon_array_loadStrings
//老師準備了list.txt裡面有299行(很多圖檔的檔名)
int N = 299;
PImage [] imgs = new PImage[299];
void setup()
{
  size(800,800);
  String[]filenames = loadStrings("list.txt");
  for(int i=0;i<N;i++)
  {
    imgs[i] = loadImage(filenames[i]);
  }
}
void draw()
{
  int i = frameCount%N;
  background(imgs[i]);
}
