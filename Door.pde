class Door {
  float xPos, yPos;
  boolean leftOpen = false;
  boolean rightOpen = false;

  Door(float x, float y) {
    xPos = x;
    yPos = y;
  }

  void drawDoor() {
    if (!leftOpen) {
      stroke(#000000);
      fill(#969ca1, 75);
      rect(xPos, yPos, 275/2, 700-yPos);
      fill(#FFFFFF);
      rect(xPos + 100, yPos + 275, 7, 45);
    }
    if (!rightOpen) {
      stroke(#000000);
      fill(#969ca1, 75);
      rect(xPos+275/2, yPos, 275/2, 700-yPos);
      fill(#FFFFFF);
      rect(xPos + 168, yPos + 275, 7, 45);
    }

    if (leftOpen) {
      stroke(#000000);
      fill(#969ca1, 75);
      rect(xPos, yPos, 69, 700-yPos);
    }
    if (rightOpen) {
      stroke(#000000);
      fill(#969ca1, 75);
      rect(xPos+175+38, yPos, 62, 700-yPos);
    }
  }

  void display() {
    drawDoor();
  }

  void onClick(float mx, float my) {
    if (mx > xPos && mx < xPos + 275/2 && my > yPos){
    leftOpen = !leftOpen;
  }
  if (mx > xPos + 275/2 && mx < xPos + 275 && my > yPos){
    rightOpen = !rightOpen;
  }
}
}
