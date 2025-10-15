Tv tv1;
Window window1;

void setup(){
  size(1200,700);
  tv1 = new Tv(width/2,height/2);
  window1 = new Window();
}

void mouseClicked(){
  window1.Update(mouseX, mouseY);
}


void draw(){
  background(#FFFFFF);
  tv1.display();
  window1.displayWindow(300,300,500,300);
}
