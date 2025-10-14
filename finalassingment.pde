Tv tv1;



void setup(){
  size(1200,700);
  tv1 = new Tv(width/2,height/2);
}

void draw(){
  background(#FFFFFF);
  tv1.display();
}
