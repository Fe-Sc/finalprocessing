class Tv {
  float x;
  float y;
  
  Tv(float initX, float initY){
    x = initX;
    y = initY;
  }
  
  void display(){
    //base
    fill(#000000);
    rect(x,y,90,20);
    //neck
    stroke(#000000);
    rect(x+40,y-35,15,40);
    //screen
    rect(x-30,y-75,150,60);
  }
}
