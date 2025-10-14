class Tv {
  float x;
  float y;
  boolean isOn;


  Tv(float initX, float initY) {
    x = initX;
    y = initY;
  }

  void display() {
    fill(#C4C4C4);
    stroke(#C4C4C4);
    rect(100, 400, 100, 300);
  }
}
