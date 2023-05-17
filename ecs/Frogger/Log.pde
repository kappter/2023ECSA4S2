class Log {
  int x, y, speed;
  PImage l1;

  Log() {
    x = int(random(100,500));
    y = 300;
    speed = int(random(2,9));
    l1 = loadImage("log1.png");
  }

  void display() {
    imageMode(CENTER);
    l1.resize(32, 32);
    image(l1, x, y);
  }

  void move() {
    if(x<0) {
      x = width;
    }
    x = x - speed;
  }
}
