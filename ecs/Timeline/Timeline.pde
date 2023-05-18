// Mr Kapptie | April 6, 2023 | Timeline

void setup() {
  size(950, 400);
}

void draw() {
  background(#E0D2A5);
  drawRef();
  histEvent(150, 200, "1963", true, "Jordan is Born in Brooklyn, NY");
  histEvent(320, 200, "1977", true, "Attends Laney High and leads JV Basketball Team");
  histEvent(420, 300, "1981", false, "detail1");
}

void drawRef() {
  textAlign(CENTER);
  textSize(35);
  fill(0);
  text("Michael Jordan Timeline", width/2, 60);
  textSize(20);
  text("by Mr Kapptie", width/2, 80);
  strokeWeight(3);
  line(50, 250, 900, 250);
  strokeWeight(1);
  line(50, 245, 50, 255);
  line(900, 245, 900, 255);
  textSize(14);
  text("1960", 50, 265);
  text("2000", 900, 265);
}

void histEvent(int x, int y, String title, boolean top, String detail) {
  if (top == true) {
    line(x, y, x-20, y+50);
  } else {
    line(x, y, x-20, y-50);
  }
  rectMode(CENTER);
  if (mouseX>x-50 && mouseX<x+50 && mouseY>y-15 && mouseY<y+15) {
    fill(200);
  } else {
    fill(222);
  }
  strokeWeight(2);
  rect(x, y, 100, 30, 7);
  fill(0);
  text(title, x, y+5);
  if (mouseX>x-50 && mouseX<x+50 && mouseY>y-15 && mouseY<y+15) {
    if (top) {
      text(detail, width/2, 150);
    } else {
      text(detail, width/2, 350);
    }
  }
}
