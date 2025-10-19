TvKast tvKast1;
Window window1;
Tv tv1;
achtergrond bg;
logoText text;

int globalTimer = 0;
PFont logo;

void setup(){
  size(1200,700);
  tvKast1 = new TvKast(width/2,height/2);
  window1 = new Window();
  tv1 = new Tv(105,380);
  bg = new achtergrond();
  text = new logoText(50, 95);
  logo = createFont("Outfit-ExtraBold.tff", 96);
}

void mousePressed(){
  window1.Update(mouseX, mouseY);
  text.onClick(mouseX, mouseY);
}

void updateTimer(){
  globalTimer = globalTimer + 1;
  if (globalTimer >60){
    globalTimer = 0;
  }
}

void draw(){
  background(#FFFFFF);
  updateTimer();
//  tvKast1.display();
//  tv1.display();

  bg.display();
  window1.displayWindow(70, 120, 600, 580);
  text.display();
  
}
