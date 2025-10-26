class logoText {
  float xPos;
  float yPos;
  float mx, my;
  float gravity = 0.5;
  String[] letters = new String[]{"G", "A", "M", "E", "S", "H", "O", "P", "T", "W", "E", "N", "T", "E"};
  float[] letterX = new float[14];
  float[] letterY = new float[14];
  float[] speedY = new float[14];
  float[] durability = new float[14];
  boolean[] falling = new boolean[14]; // track which letters are dropping
  float[] shakeOffset = new float[14];
  float[] shakeTimer = new float[14];
  //Constructors
  logoText(float x, float y) {
    xPos = x;
    yPos = y;
    for (int i = 0; i < letterY.length; i++) {
      letterY[i] = 95;
      durability[i] = 3;
      speedY[i] = 0;
      falling[i] = false;
      shakeOffset[i] = 0;
      shakeTimer[i] = 0;
    }
  }
  //Draw the text at the correct position
  void makeText() {
    textFont(logo);
    fill(#FFFFFF);
    float x = xPos;
    for (int i = 0; i <letters.length; i++) {
      float xDraw = x + shakeOffset[i];
      text(letters[i], xDraw, letterY[i]);
      letterX[i] = x;
      if (i==7) {
        x += textWidth(letters[i])+45;
      } else
        x += textWidth(letters[i])+5;
    }
  }
  //Update the durability on click and enter falling state
  void onClick(float x, float y) {
    mx = x;
    my = y;
    println(mx + ", " + my);
    for (int i = 0; i <14; i++) {
      if (durability[i] > 0) {
        if (mx > letterX[i] && mx < letterX[i] + textWidth(letters[i]) && my < letterY[i]) {
          println(letters[i]);
          updateDurability(i);
          shakeTimer[i] = 2;
          println(durability[i]);
          if (durability[i] <= 0) falling[i] = true;
        }
      }
    }
  }


  void updateText() {
    for (int i = 0; i <14; i++) {

        if (shakeTimer[i] > 0) {
        shakeOffset[i] = random(-3, 3); // shake left/right 3px
        shakeTimer[i]--;
      } else {
        shakeOffset[i] = 0;
      }
      
      
      if (falling[i]) {
        speedY[i] += gravity;
        letterY[i] += speedY[i];

        if (letterY[i] > 700) { // stop when it hits bottom
          letterY[i] = 700;
          speedY[i] = 0;
          falling[i] = false;
        }
      }
      //println(letterX);
      //println(letterY);
    }
  }

  void updateDurability(int x) {
    durability[x] = durability[x] - 1;
  }

  void moveText(){
    
  }

  void display() {
    updateText();
    makeText();
  }
}
