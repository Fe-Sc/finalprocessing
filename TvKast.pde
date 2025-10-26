class TvKast {
  float x;
  float y;


  TvKast(float initX, float initY) {
    x = initX;
    y = initY;
  }

  void display() {
    fill(#C4C4C4);
    stroke(#C4C4C4);
    rect(x,y, 100, 300);
  }
}
