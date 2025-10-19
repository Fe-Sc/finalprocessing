class achtergrond{
  
  void bg(){
    noStroke();
    fill(#3b3b3b);
    rect(0, 0, 1200, 120);
    rect(0,0,70,700);
    //Trying to make a kind of wooden background
    fill(#deb887);
    stroke(#000000);
    for (int i = 0; i < 12; i++){
      rect(70 + i * 50, 120, 50, 580);
    }
   /* for (int i = 0; i < 5; i++){
      rect(995 + i * 50, 120, 50, 580);
    }*/
    //Making the doorway
    noStroke();
    fill(#3b3b3b);  
    rect(670, 120, 25, 580);
    rect(670, 120, 300, 45);
    rect(970, 120, 25, 580);
    textFont(logo);
    text("word", 100, 100);
  }
  
  void display(){
    bg();
  }
}
