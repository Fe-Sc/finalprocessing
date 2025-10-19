class logoText{
  float xPos;
  float yPos;
  float mx, my;
  float gravity = 0.5;
  String[] letters = new String[]{"G", "A", "M", "E", "S", "H", "O", "P", "T", "W", "E", "N", "T", "E"};
  float[] letterX = new float[14];
  float[] letterY = new float[14];
  float[] speedY = new float[14];
  float[] durability = new float[]{3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3};
  boolean[] falling = new boolean[14]; // track which letters are dropping
  logoText(float x, float y){
    xPos = x;
    yPos = y;
      for (int i = 0; i < letterY.length; i++) {
      letterY[i] = 95;
      speedY[i] = 0;
      falling[i] = false;
      }
  }
  
  void makeText(){
    textFont(logo);
    fill(#FFFFFF);
   float x = xPos;
   for(int i = 0; i <letters.length; i++){
    text(letters[i], x, letterY[i]);
    letterX[i] = x;
    if (i==7){
      x += textWidth(letters[i])+75;
    }
    else
    x += textWidth(letters[i])+5;
    }
  }
  
  void getMouse(float x, float y){
    mx = x;
    my = y;

  }
  
  void updateText(){
    for(int i = 0; i <14 ; i++){
      if (durability[i] > 0){
      if(mx > letterX[i] && mx < letterX[i] + textWidth(letters[i]) && my < letterY[i]){
        println(letters[i]);
        durability[i] = durability[i] - 1;
        println(durability[i]);
       if (durability[i] <= 0) falling[i] = true;
      }
      
      }
      if (durability[i] == 0){
              // update falling letters
      if (falling[i]) {
        speedY[i] += gravity;
        letterY[i] += speedY[i];
        
        if (letterY[i] > 700) { // stop when it hits bottom
          letterY[i] = 700;
          speedY[i] = 0;
          falling[i] = false;
        }
      }
      }
      //println(letterX);
      //println(letterY);
    }
  }
  
    void dropletter(int x){
      float speed = 1;
      while (letterY[x] < 700){

        letterY[x] = letterY[x] + speed;
        speed = speed + gravity;
      }
      
      
    }
  
  
  void display(){
    updateText();
    makeText();
  }
}
