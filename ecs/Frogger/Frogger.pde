// Mr Kapptie | April 26 2023 | Frogger App
boolean play;
Frog fred;
Log log1;
PImage bg;
int score, gameTime;

void setup() {
  size(500, 800);
  play = false;
  fred = new Frog();
  log1 = new Log();
  bg = loadImage("bg.png");
  score = 0;
  gameTime = 0;
}

void draw() {
  gameTime++;
  if (play == false) {
    startScreen();
  } else {
    background(128);
    drawBackground();
    infoPanel();
    fred.display();
    log1.display();
    log1.move();
    if (fred.y > height) {
      log1.x = int(random(100,500));
      log1.y = int(random(height));
    }
  }
}

void keyPressed() {
  if (key == 'w' || key == 'W') {
    fred.move('u');
  } else if (key == 'a') {
    fred.move('l');
  } else if (key == 's') {
    fred.move('d');
  } else if (key == 'd') {
    fred.move('r');
  } else if (key == ' ') {
    play = true;
  }
}

void drawBackground() {
  fill(0, 0, 200);
  rect(0, 400, width, 100);
  //image(bg,0,0);
}

void startScreen() {
  background(0);
  fill(255);
  textSize(30);
  textAlign(CENTER);
  text("Welcome to Frogger!", width/2, 400);
  text("by Mr Kapptie", width/2, 440);
  text("Press space bar to start the game!", width/2, 480);
}

void gameOver() {
  background(0);
  fill(255);
  textSize(40);
  textAlign(CENTER);
  text("Game Over!", width/2, 400);
  text("Score: " + score, width/2, 440);
  text("Level: ", width/2, 480);
  text("Time:" + gameTime, width/2, 510);
  noLoop();
}

void infoPanel() {
  fill(128, 128);
  rect(0, 0, width, 80);
  fill(0);
  text("Score: " + score, 20, 70);
  text("Time:" + gameTime, 100, 70);
}
