class ArcadeMachine{
  float x;
  float y;
  
  ArcadeMachine(float initX, float initY){
    x = initX;
    y = initY;
  }
  
  void display(){
    
    //base
    fill(#0D7913);
    rect(x,y+20,120,180);
    //control panel
    fill(#343934);
    rect(x-20,y-10,160,35);
    //top
    fill(#21CE2B);
    rect(x-5,y-190,130,180);
    //topthing
    fill(#343934);
    rect(x-20,y-210,160,45);
    
  }
}
