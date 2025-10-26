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
    //gravity
    y = y + airspeed;
    airspeed = airspeed + grav;
    if (y < 350) {
      y = 350;
      airspeed = 0;
    } else if ( y > 405) {
      y = 405;
      airspeed = 0;
      jumping = false;
    }
  }



  void jumping() {
    if (screen.IsOn) {
      if (jumping == false) { //character only jumps if not jumping
        airspeed = jump;
        jumping = true;
      }
    }
  }

  void moveLeft() {
    if (screen.IsOn) {
      x -= 10;
      if (x < 331) {
        x = 331;
      }
    }
  }
  void moveRight() {
    if (screen.IsOn) {
      x += 10;
      if (x > 405) {
        x = 405;
      }
    }
  }
  //checks if clicking on the screen
  void onClick(float mx, float my) {
    if (mx > 365 && mx < 365+90 && my > 350 && my < 350 + 100 && window1.isBroken) {
      visible = !visible;
    }
  }
}
