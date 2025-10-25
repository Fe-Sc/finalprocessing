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

  void onClick(float mouseX, float mouseY) {
    if (mouseX > x && mouseX < x+90 && mouseY > y && mouseY < y + 100) {
      IsOn = !IsOn;
    }
  }
}
