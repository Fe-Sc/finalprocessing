class Window {
  //define variables
  int durability = 4;
  int xWindow;
  int yWindow;
  int windowWidth;
  int windowHeight;
  int[] crackPos = new int[6];
  int xPos;
  int yPos;

  //Update the mouse position
  void Update(int mx, int my) {
    xPos = mx;
    yPos = my;
    breakWindow(xPos, yPos);
 //   println(xPos + ", " + yPos);
  }
  //Draw the window (just a greyish transparant rectangle)
  void window(int x, int y, int breed, int hoog) {
    noStroke();
    fill(#969ca1, 150);
    rect(x, y, breed, hoog);
  }
//Draw the cracks based on position (x, y)
  void crackWindow(int x, int y) {
   //cracks zien er ass uit moet nog fixen
    stroke(#000000);
    line(x, y, x-10, y-30);
    line(x-10, y-30, x-20, y-40);
    line(x-10, y-30, x, y-50);
    line(x, y, x+20, y+10);
    line(x, y, x-30, y+15);
    line(x, y, x-20, y-10);
    line(x-20, y-10, x-35, y);
    line(x-20, y-10, x-10, y-30);

  }
  //display the window and save the chosen coordinates
  void displayWindow(int x, int y, int w, int h) {
    xWindow = x;
    yWindow = y;
    windowWidth = w;
    windowHeight = h;
    if (durability > 0) {
      window(x, y, w, h);
      drawCracks();
    }
  }

  //function to keep track of the position of the cracks and reduce the durability after each click on the window
  void breakWindow(int mx, int my) {
    if (durability > 0 && mx > xWindow && mx < xWindow + windowWidth && my > yWindow && my < yWindow + windowHeight) {
      if (durability == 4) {
        crackPos[0] = mx;
        crackPos[1] = my;
      }
      if (durability == 3) {
        crackPos[2] = mx;
        crackPos[3] = my;
      }
      if (durability == 2) {
        crackPos[4] = mx;
        crackPos[5] = my;
      }
      durability = durability - 1;
    }
  }

  //draw the cracks each frame
  void drawCracks() {
    if (durability <= 3) {
      crackWindow(crackPos[0], crackPos[1]);
    }
    if (durability <=2) {
      crackWindow(crackPos[2], crackPos[3]);
    }
    if (durability <= 1) {
      crackWindow(crackPos[4], crackPos[5]);
    }
  }
}
