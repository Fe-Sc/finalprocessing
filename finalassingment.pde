TvKast tvKast1;
Window window1;
Window window2;
Tv tv1;
achtergrond bg;
logoText text;
ArcadeMachine machine;
character ch1;
gameShopLogo shopLogo;
Statue marioStatue;
ArcadeScreen screen;
Door door;
Shelf shelf1;


int globalTimer = 0;
PFont logo;

void setup() {
  size(1200, 700);
  tvKast1 = new TvKast(width/2, height/2);
  window1 = new Window(70, 120, 600, 580);
  window2 = new Window(995, 120, 205, 680);
  tv1 = new Tv(105, 380);
  bg = new achtergrond();
  logo = loadFont("NirmalaUI-Bold-96.vlw");
  text = new logoText(25, 95);
  machine = new ArcadeMachine(350, 500);
  shopLogo = new gameShopLogo(1130, 60);
  door = new Door(695, 164);
  ch1 = new character(365, 350, "robotguy.png");
  marioStatue = new Statue(1100, 675);
  screen = new ArcadeScreen(365, 350);
  shelf1 = new Shelf(500, 300);
}

void mousePressed() {
  window1.Update(mouseX, mouseY);
  window2.Update(mouseX, mouseY);
  text.onClick(mouseX, mouseY);
  screen.onClick(mouseX, mouseY);
  ch1.onClick(mouseX, mouseY);
}

void updateTimer() {
  globalTimer = globalTimer + 1;
  if (globalTimer >60) {
    globalTimer = 0;
  }
}

void draw() {
  background(#FFFFFF);
  updateTimer();
  bg.display();
  door.display();
  tv1.display();
  tvKast1.display();
  machine.display();
  shelf1.display();
  shopLogo.display();
  marioStatue.display();
  screen.display();
  window2.display();
  window1.display();
  ch1.display();
  ch1.grav();
  text.display();
}

void keyPressed() {
  if (keyCode == LEFT) {
    ch1.moveLeft();
  } else if (keyCode == RIGHT) {
    ch1.moveRight();
  } else if (keyCode == UP) {
    ch1.jumping();
  }
}
