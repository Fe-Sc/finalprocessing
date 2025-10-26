class TVShelf {
  float x;
  float y;

// Cool shelf for tv
  TVShelf(float initX, float initY) {
    x = initX;
    y = initY;
  }


  void drawKast(){
    fill(#C4C4C4);
    stroke(#000000);
    rect(x,y, 100, 300);
    stroke(#000000);
    for (int i = 0; i < 5; i++){
    rect(x+10, y+10+i*56, 80, 56);
    rect(x+40, y+38+i*56 , 20, 5);
    }
  }

  void display() {
    drawKast();
  }
}
