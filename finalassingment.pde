TvKast tvKast1;
Window window1;
Tv tv1;

void setup(){
  size(1200,700);
  tvKast1 = new TvKast(width/2,height/2);
  window1 = new Window();
  tv1 = new Tv(105,380);
  frameRate(10);
}

void mouseClicked(){
  window1.Update(mouseX, mouseY);
}


void draw(){
  background(#FFFFFF);
  tvKast1.display();
  tv1.display();
  window1.displayWindow(100, 100, 300, 500);
  
}
