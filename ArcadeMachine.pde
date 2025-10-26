class ArcadeMachine {
  //Class to draw the arcade machine
  float x;
  float y;
  boolean moving = false;
  boolean moveright = false;
  boolean moveleft = false;

  ArcadeMachine(float initX, float initY) {
    x = initX;
    y = initY;
  }

  void display() {

    //base
    fill(#0f9216);
    rect(x, y+20, 120, 180);
    //top
    fill(#15c51f);
    rect(x-5, y-190, 130, 180);
    //controls
    if (moving == false) {
      strokeWeight(6);
      stroke(#000000);
      line(x-5, y-10, x-5, y-30);
      line(x+10, y-10, x+10, y-30);
      strokeWeight(1);
      fill(#000000);
      circle(x-5, y-30, 10);
      circle(x+10, y-30, 10);
    } else if (moveright == true) {
      strokeWeight(6);
      stroke(#000000);
      line(x-5, y-10, x, y-30);
      line(x+10, y-10, x+15, y-30);
      strokeWeight(1);
      fill(#000000);
      circle(x, y-30, 10);
      circle(x+15, y-30, 10);
    } else if (moveleft == true) {
      strokeWeight(6);
      stroke(#000000);
      line(x-5, y-10, x-10, y-30);
      line(x+10, y-10, x+5, y-30);
      strokeWeight(1);
      fill(#000000);
      circle(x-10, y-30, 10);
      circle(x+5, y-30, 10);
    }

    //control panel
    fill(#343934);
    rect(x-20, y-10, 160, 35);
    //topthing
    fill(#343934);
    rect(x-20, y-210, 160, 45);
    //screen
    fill(#4c4c4c);
    rect(x+15, y-150, 90, 100);
  }
  
  //Functions to move joysticks
  void moveright() {
    moveright = true;
    moving = true;
  }
  
  void moveleft(){
    moveleft = true;
    moving = true;
  }
  
  void reset() {
    moving = false;
    moveleft = false;
    moveright = false;
  }
}
