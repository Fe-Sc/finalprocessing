class Figure {
  float x;
  float y;
  PImage img;
  float w = 32;
  float h = 32;
  float airspeed = 0;
  float jump = -5;
  float grav = 0.2;
  boolean jumping = false;


  Figure(float initX, float initY, String imgpath) {
    x = initX;
    y = initY;
    img = loadImage(imgpath);
  }

  void display() {
    image(img, x, y, w, h);
  }
  void onClick(float mx, float my) {
    if (mx > x && mx < x + w && my > y && my < y+h && window2.isBroken && jumping == false) {
      airspeed = jump;
    }
  }

  void grav() {
    y = y + airspeed;
    airspeed = airspeed + grav;
    if (y > 268) {
      y = 267;
      airspeed = 0;
      jumping = false;
    } else {
      jumping = true;
    }
  }
}
