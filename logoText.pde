class logoText{
  float xPos;
  float yPos;
  float mx, my;
  float gravity = 0.5;
  String[] letters = new String[]{"G", "A", "M", "E", "S", "H", "O", "P", "T", "W", "E", "N", "T", "E"};
  float[] letterX = new float[14];
  float[] letterY = new float[]{95, 95, 95, 95, 95, 95, 95, 95, 95, 95, 95, 95, 95, 95};
  float[] durability = new float[]{3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3};
  logoText(float x, float y){
    xPos = x;
    yPos = y;
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
    updateText();
  }
  
  void updateText(){
    for(int i = 0; i <14 ; i++){
      if (durability[i] > 0){
      if(mx > letterX[i] && mx < letterX[i] + textWidth(letters[i]) && my < letterY[i]){
        println(letters[i]);
        durability[i] = durability[i] - 1;
        println(durability[i]);
      }
      }
      if (durability[i] == 0){
        dropletter(i);
      }
      //println(letterX);
      //println(letterY);
    }
  }
  
    void dropletter(int x){
      float speed = 1;
      while (letterY[x] < 700){
       // if (globalTimer == 1){
        letterY[x] = letterY[x] + speed;
        speed = speed + gravity;
     //   }
      }
      
      
    }
  
  
  void display(){
    makeText();
  }
}
