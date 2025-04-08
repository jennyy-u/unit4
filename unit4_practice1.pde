//jenny yu
//block 2-4
//april 7, 2025

color peach = #dfaea1;
color maroon = #895159;
color sage = #919f89;
color periwinkle = #babde2;
color navy = #374375;
color cream = #fffcf5;
color black = #000000;

void setup() {
  size(800, 600);
}


void draw() {
  background(cream);
  face(200, 100); //(x, y)
  face(300, 300);
}


void face(int x, int y) {
  pushMatrix();
  translate(x, y); //redefining (0, 0)

  skin();
  hair();
  eye(100, 150); //left
  eye(300, 150); //right
  mouth();

  popMatrix();
}

void skin() {
  fill(sage);
  stroke(black);
  strokeWeight(3);
  rect(0, 0, 400, 400);
}

void hair() {
  strokeWeight(25);
  int x = 0;
  while (x <= 400) {
    line(x, -50, x, 50);
    x = x + 50;
  }
  //put strokeWeight back to normal
  strokeWeight(3);
}

void eye (int x, int y) {
  fill(cream);
  ellipse(x, y, 100, 50); //white part
  fill(maroon);
  circle(x, y, 50); //pupil
  fill(black);
  circle(x, y, 25); //center
}

void mouth() {
  fill(cream);
  rect(100, 250, 200, 100); //mouth
  line(100, 300, 300, 300); //teeth
  line(150, 250, 150, 350);
  line(200, 250, 200, 350);
  line(250, 250, 250, 350);
}
