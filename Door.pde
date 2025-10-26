class Door{
  float xPos, yPos;
  
  
  Door(float x, float y){
    xPos = x;
    yPos = y;
  }
  
  void drawDoor(){
    fill(#969ca1, 75);
    rect(xPos, yPos, 275, 700-yPos);
    stroke(#000000);
    line(xPos + 275/2, yPos, xPos + 275/2, 700);
    fill(#FFFFFF);
    rect(xPos + 100, yPos + 275, 7, 45);
    rect(xPos + 168, yPos + 275, 7, 45);
  }
  
  void display(){
    drawDoor();
  }
  
}
