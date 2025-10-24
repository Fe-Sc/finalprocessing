TvKast tvKast1;
Window window1;
Tv tv1;
achtergrond bg;
logoText text;
ArcadeMachine machine;
character ch1;

int globalTimer = 0;
PFont logo;

void setup(){
  size(1200,700);
  tvKast1 = new TvKast(width/2,height/2);
  window1 = new Window();
  tv1 = new Tv(105,380);
  bg = new achtergrond();
  text = new logoText(25, 95);
  machine = new ArcadeMachine(350,500);
  logo = loadFont("NirmalaUI-Bold-96.vlw");
  ch1 = new character(0,0,"robotguy.png");
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
  tv1.display();
  tvKast1.display();
  machine.display();
  window1.displayWindow(70, 120, 600, 580);
  text.display();
  ch1.display();
  ch1.grav();
  
}

void keyPressed(){
  if (keyCode == LEFT){
    ch1.moveLeft();
  } else if (keyCode == RIGHT){
    ch1.moveRight();
  } else if (keyCode == UP){
    ch1.jumping();
  }
}
