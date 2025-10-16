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
    rect(x-40,y-95,170,80);
    //color
    fill(random(255),random(255),random(255));
    rect(x-25,y-85,140,60);
  }
}
