class Statue{
  //Class to draw a mario statue
  float xPos, yPos;
  
  Statue(float x, float y){
    xPos = x;
    yPos = y;
  }
  
  void drawStatue(){
    //Statue Base
    noStroke();
    fill(#b4b4b4);
    rect(xPos-75, yPos, 150, 25);
    //Shoes
    fill(#f9ad75);
    rect(xPos - 45, yPos - 4, 30, 4);
    rect(xPos + 15, yPos - 4, 30, 4);
    fill(#996611);
    circle(xPos-37, yPos - 15, 15);
    circle(xPos+37, yPos - 15, 15);
    rect(xPos - 45, yPos - 15, 30, 11);
    rect(xPos + 15, yPos - 15, 30, 11);
    rect(xPos + 15, yPos - 15, 30, 11);
    rect(xPos - 35, yPos - 25, 20, 10);
    rect(xPos + 15, yPos - 25, 20, 10);
    //Torso
    fill(#B600FF);
    rect(xPos-40, yPos-180, 80, 80);
    //Pants
    fill(#E8F55E);
    rect(xPos-40, yPos - 100, 30, 75);
    rect(xPos+10, yPos - 100, 30, 75);
    rect(xPos -40, yPos - 140, 80, 60);
    rect(xPos-35, yPos-180, 20, 40);
    rect(xPos + 15, yPos -180, 20, 40);
    //Buttons
    fill(#ffff00);
    circle(xPos-25, yPos - 135, 10);
    circle(xPos+25, yPos - 135, 10);
    //Arms
    fill(#B600FF);
    rect(xPos - 55, yPos -180, 20, 60, 10);
    rect(xPos +35, yPos -180, 20, 60, 10);
    //Gloves
    fill(#FFFFFF);
    rect(xPos -55, yPos - 125, 18, 7);
    circle(xPos -46, yPos -113, 20);
    rect(xPos +37, yPos - 125, 18, 7);
    circle(xPos +46, yPos -113, 20);
    //Head
    fill(#fed1b0);
    circle(xPos, yPos-215, 80);
    //Hat
    fill(#E8F55E);
    ellipse(xPos, yPos-245, 75, 60);
    stroke(#000000);
    fill(#FFFFFF);
    circle(xPos, yPos-260, 20);
    fill(#C3CE4B);
    ellipse(xPos, yPos-245, 60, 20);
    textSize(15);
    text("M", xPos-7, yPos-255);
    textSize(96);
    noStroke();
    fill(#fed1b0);
    ellipse(xPos, yPos-234, 70, 32);
    //moustache
    fill(#541800);
    circle(xPos-20, yPos-210, 13);
    circle(xPos-15, yPos-205, 13);
    circle(xPos-10, yPos-202, 13);
    circle(xPos-5, yPos-200, 13);
    circle(xPos, yPos-200, 13);
    circle(xPos+20, yPos-210, 13);
    circle(xPos+15, yPos-205, 13);
    circle(xPos+10, yPos-202, 13);
    circle(xPos+5, yPos-200, 13);
    fill(#fed1b0);
    ellipse(xPos, yPos-220, 50, 30);
    //Eyes
    fill(#FFFFFF);
    ellipse(xPos-12, yPos-225, 18, 28);
    ellipse(xPos+12, yPos-225, 18, 28);
    fill(#499fd7);
    ellipse(xPos-11, yPos-224, 14, 24);
    ellipse(xPos+11, yPos-224, 14, 24);
    fill(#000000);
    ellipse(xPos-10, yPos-222, 11, 21);
    ellipse(xPos+10, yPos-222, 11, 21);
    fill(#fed1b0);
    stroke(#000000);
    ellipse(xPos, yPos-210, 25, 15);
    noStroke();
  }
  
  void display(){
    drawStatue();
  }
  
  
}
