//Authors: Fernando Schintz & Koen Stroo
//Summary: Gameshop Twente in Enschede


TVShelf tvshelf1;
Window window1;
Window window2;
Tv tv1;
background bg;
logoText text;
ArcadeMachine machine;
character ch1;
gameShopLogo shopLogo;
Statue marioStatue;
ArcadeScreen screen;
Door door;
Shelf shelf1;
Game game1;
Game game2;
Game game3;
Game game4;
Figure figure1;
Figure figure2;
Figure figure3;



int globalTimer = 0;
PFont logo;

void setup() {
  size(1200, 700);
  tvshelf1 = new TVShelf(110, 400);
  window1 = new Window(70, 120, 600, 580);
  window2 = new Window(995, 120, 205, 680);
  tv1 = new Tv(115, 380);
  bg = new background();
  logo = loadFont("NirmalaUI-Bold-96.vlw");
  text = new logoText(25, 95);
  machine = new ArcadeMachine(350, 500);
  shopLogo = new gameShopLogo(1130, 60);
  door = new Door(695, 164);
  ch1 = new character(365, 350, "robotguy.png");
  marioStatue = new Statue(1100, 675);
  screen = new ArcadeScreen(365, 350);
  shelf1 = new Shelf(500, 300);
  game1 = new Game(520, 390, "boxcover.png", 30, 40, 1);
  game2 = new Game(580, 390, "boxcover2.png", 30, 40,1);
  game3 = new Game(520, 515, "boxcover3.png", 30, 40,1);
  game4 = new Game(580, 515, "boxcover2.png", 30, 40,1);
  figure1 = new Figure(1043,268,"Figure1.png");
  figure2 = new Figure(1073,268,"figure2.png");
  figure3 = new Figure(1103,268,"figure3.png");
}


void mousePressed() {
  window1.Update(mouseX, mouseY);
  window2.Update(mouseX, mouseY);
  text.onClick(mouseX, mouseY);
  screen.onClick(mouseX, mouseY);
  ch1.onClick(mouseX, mouseY);
  game1.onClick(mouseX, mouseY);
  tv1.onClick(mouseX, mouseY);
  game2.onClick(mouseX, mouseY);
  game3.onClick(mouseX, mouseY);
  game4.onClick(mouseX, mouseY);
  door.onClick(mouseX, mouseY);
  figure1.onClick(mouseX,mouseY);
  figure2.onClick(mouseX,mouseY);
  figure3.onClick(mouseX,mouseY);
}

void mouseDragged() {
  game1.onDrag(mouseX, mouseY);
  game2.onDrag(mouseX, mouseY);
  game3.onDrag(mouseX, mouseY);
  game4.onDrag(mouseX, mouseY);

}

void mouseReleased() {
  game1.onRelease();
  game2.onRelease();
  game3.onRelease();
  game4.onRelease();

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
  tvshelf1.display();
  machine.display();
  shelf1.display();
  shopLogo.display();
  marioStatue.display();
  screen.display();
  window2.display();
  ch1.display();
  ch1.grav();
  text.display();
  game1.display();
  game2.display();
  game3.display();
  game4.display();
  window1.display();
  figure1.grav();
  figure2.grav();
  figure3.grav();
  figure1.display();
  figure2.display();
  figure3.display();
}

void keyPressed() {
  if (window1.isBroken) {
    if (keyCode == LEFT) {
      ch1.moveLeft();
      machine.moveleft();
    } else if (keyCode == RIGHT) {
      ch1.moveRight();
      machine.moveright();
    } else if (keyCode == UP) {
      ch1.jumping();
    }
  }
}

void keyReleased() {
  if (keyCode == LEFT || keyCode == RIGHT) {
    machine.reset();
  }
}
