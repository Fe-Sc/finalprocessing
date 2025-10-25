class Statue{
  
  float xPos, yPos;
  
  Statue(float x, float y){
    xPos = x;
    yPos = y;
  }
  
  void drawStatue(){
    //Statue Base
    noStroke();
    fill(#b4b4b4);
    rect(xPos, yPos, 150, 25);
    
    
  }
  
  void display(){
    drawStatue();
  }
  
  
}
