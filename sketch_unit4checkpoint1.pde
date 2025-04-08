//jenny yu
//block 2-4
//april 8, 2025


//colour palette
color sand = #e8d1a7;
color olive = #9d9167;
color wood = #84592b;
color mocha = #654321;
color cherry = #743014;


void setup() {
  size(800, 600);
}


void draw() {
  background(sand);
  house(200, 250);
}


void house(int x, int  y) {
  pushMatrix();
  translate(x, y);

  front();
  door();
  //window();
  chimney();

  popMatrix();
}

void front() {
  stroke(olive);
  fill(olive);
  strokeWeight(3);
  rect(0, 0, 400, 300);
  triangle(0, 0, 200, -150, 400, 0);
  //frame
  stroke(wood);
  fill(wood);
  strokeWeight(8);
  line(0, 300, 400, 300);
  line(200, -150, -15, 15);
  line(200, -150, 415, 15);
}

void door() {
  stroke(wood);
  fill(cherry);
  strokeWeight(5);
  rect(50, 100, 120, 200);
  strokeWeight(3);
  fill(wood);
  circle(155, 200, 10);
}

void chimney() {
  stroke(mocha);
  fill(mocha);
  rect(30, -100, 50, 10);
  stroke(wood);
  fill(wood);
  rect(40, -87, 30, 30);
  triangle(40, -57, 70, -56, 40, -30);
}
