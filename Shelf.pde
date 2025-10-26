class Shelf{
  float xPos, yPos;
  
  Shelf(float x, float y){
    xPos = x;
    yPos = y;
  }
  
  void drawShelf(){
    fill(#262626);
    rect(xPos, yPos, 150, 400);
    fill(#080808);
    rect(xPos + 10, yPos + 10, 130, 380);
    fill(#a7a7a7);
    rect(xPos + 10, yPos + 125, 130, 10);
    rect(xPos + 10, yPos + 250, 130, 10);
  }
  
  
  
  void display(){
    drawShelf();
  }
  
}
