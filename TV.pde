class Tv {
  float x;
  boolean isOn = false;
  float y;
  color tvColor = color(#000000) ;
  Tv(float initX, float initY) {
    x = initX;
    y = initY;
  }

  void display() {
    //base
    fill(#000000);
    rect(x, y, 90, 20);
    //neck
    stroke(#000000);
    rect(x+40, y-35, 15, 40);
    //screen
    rect(x-40, y-95, 170, 80);
    //Change tv color each second
    if (globalTimer == 5 && isOn) {
      //color
      tvColor = color(random(255), random(255), random(255));
    }
    if (!isOn) tvColor = color(#000000);
    fill(tvColor);
    rect(x-25, y-85, 140, 60);
  }
  //Turn tv on/off
  void onClick(float mx, float my) {
    if (mx > x-40 && mx < x+130 && my > y-95 && my < y-15 && window1.isBroken) {
      isOn = !isOn;
    }
  }
}
