class gameShopLogo {
  float xPos;
  float yPos;
  
  gameShopLogo(float x, float y){
    xPos = x;
    yPos = y;
  }
  
  void drawLogo(){
    noStroke();
    fill(#0a7ebd);
    circle(xPos, yPos, 90);
    fill(#FFFFFF);
    circle(xPos, yPos, 80);
    fill(#0a7ebd);
    circle(xPos, yPos, 75);
    fill(#FFFFFF);
    rect(xPos-57, yPos + 18, 114, 34, 10);
    fill(#e1082b);
    rect(xPos-55, yPos + 20, 110, 30, 10);
    
  }
  
  void display(){
    drawLogo();
  }
  
  
}
