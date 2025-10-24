class character {
  float x;
  float y;
  float grav = 0.3;
  float airspeed = 0;
  float jump = -5;
  PImage img;
  boolean jumping = true;

  character(float initX, float initY, String imgPath) {
    x = initX;
    y = initY;
    img = loadImage(imgPath);
  }

  void display() {
    image(img, x, y);
  }

  void grav() {
    y = y + airspeed;
    airspeed = airspeed + grav;
    if (y > height - 60) {
      y = height - 60;
      airspeed = 0;
    } else if (y < 500) {
      jumping = false;
    } else if (y < 600) {
      y = 500;
      airspeed = 0;
    }
  }

  void jumping() {
    if (jumping == false) {
      airspeed = jump;
      jumping = true;
    }
  }

  void moveLeft() {
    x -= 10;
    if (x < 40) { //restrain bird to window
      x = 40;
    }
  }
  void moveRight() {
    x += 10;
    if (x > width-40) { //restrain bird to window
      x = width-40;
    }
  }
}
