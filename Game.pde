class Game{
  int GameId;
  float x;
  float y;
  PImage img;
  
  Game(float initX, float initY, String imgpath, int w, int h){
    x = initX;
    y = initY;
    img = loadImage(imgpath);
    img.resize(w,h);
  }
  
  void display(){
    image(img, x, y);
  }
  
  
}
