class Game {
  int GameId;
  float x;
  float y;
  float imgWidth;
  float imgHeight;
  float xOffset;
  float yOffset;
  PImage img;
  boolean dragging;
  boolean pickedUp;
  float gravity = 0.5;
  float speed = 1;

  Game(float initX, float initY, String imgpath, int w, int h) {
    x = initX;
    y = initY;
    imgWidth = w;
    imgHeight = h;
    img = loadImage(imgpath);
    img.resize(w, h);
  }

  void onClick(float mx, float my) {
    if (mx > x && mx < x + imgWidth && my > y && my < y + imgHeight) {
      xOffset = mx - x;
      yOffset = my - y;
      if (window1.isBroken) {
        dragging = true;
        pickedUp = true;
      }
    } else dragging = false;
  }
<<<<<<< HEAD

  void onDrag(float mx, float my) {
    if (dragging ) {
      x = mx-xOffset;
      y= my-yOffset;
    }
=======
  
  void onDrag(float mx, float my){
    if (dragging ){
    x = mx-xOffset;
    y= my-yOffset;}
    if (x < 0) x=0;
    if (x > 1175) x = 1175;
    if (y > 700-imgHeight) y = 700-imgHeight;
    if (y < 0) y = 0;
>>>>>>> 37061d04d307ea00f4409bd8389bea12bb50dd5a
  }

  void onRelease() {
    dragging = false;
  }
<<<<<<< HEAD

  void update() {
    if (!dragging && pickedUp && y < 700-imgHeight) {
=======
  
  void update(){
    if (!dragging && pickedUp && y <= 700-imgHeight){
>>>>>>> 37061d04d307ea00f4409bd8389bea12bb50dd5a
      y = y + speed;
      speed = speed + gravity;
      if (y >= 700-imgHeight) {
        speed = 1;
      }
    }
  }





  void display() {
    update();
    image(img, x, y);
  }
}
