TvKast tvKast1;
Window window1;
Tv tv1;
achtergrond bg;

int globalTimer = 0;
PFont logo = createFont("Outfit-Bold.tff", 128);

void setup(){
  size(1200,700);
  tvKast1 = new TvKast(width/2,height/2);
  window1 = new Window();
  tv1 = new Tv(105,380);
  bg = new achtergrond();
}

void mouseClicked(){
  window1.Update(mouseX, mouseY);
}

void updateTimer(){
  globalTimer = globalTimer + 1;
  if (globalTimer >60){
    globalTimer = 0;
  }
}

void draw(){
  background(#FFFFFF);
//  updateTimer();
//  tvKast1.display();
//  tv1.display();
//  window1.displayWindow(100, 100, 300, 500);
  bg.display();
  println(globalTimer);
  
}
