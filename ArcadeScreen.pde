class ArcadeScreen {
  boolean IsOn  = false;
  float x;
  float y;

  ArcadeScreen(float initX, float initY) {
    x = initX;
    y = initY;
  }

  void display() {
    if (IsOn) {
      fill(#98E9FF);
      rect(x, y, 90, 100);
    } else {
      //screen
      fill(#4c4c4c);
      rect(x, y, 90, 100);
    }
  }

  void onClick(float mx, float my) {
    if (mx > x && mx < x+90 && my > y && my < y + 100 && window1.isBroken) {
      IsOn = !IsOn;
    }
  }
}
