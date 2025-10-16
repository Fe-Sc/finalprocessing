TvKast tvKast1;
Window window1;

void setup(){
  size(1200,700);
  tvKast1 = new TvKast(width/2,height/2);
  window1 = new Window();
}

void mouseClicked(){
  window1.Update(mouseX, mouseY);
}


void draw(){
  background(#FFFFFF);
  tvKast1.display();

}
