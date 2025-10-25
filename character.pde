class character {
  float x;
  float y;
  float grav = 0.3;
  float airspeed = 0;
  float jump = -5;
  PImage img;
  boolean jumping = true;
  boolean visible = false;

  character(float initX, float initY, String imgPath) {
    x = initX;
    y = initY;
    img = loadImage(imgPath);
  }

  void display() {
    if (visible) {
      image(img, x, y);
    }
  }

  void grav() {
    y = y + airspeed;
    airspeed = airspeed + grav;
    if (y < 350){
      y = 350;
      airspeed = 0;
    }
    else if ( y > 405){
      y = 405;
      airspeed = 0;
      jumping = false;
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
  void onClick(float mouseX, float mouseY) {
    if (mouseX > 365 && mouseX < 365+90 && mouseY > 350 && mouseY < 350 + 100) {
      visible = !visible;
    }
  }
}
