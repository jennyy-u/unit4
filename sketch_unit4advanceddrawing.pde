//jenny yu
//block 2-4
//april 16, 2025

//global variables
color mahogany = #584748;
color ccandy = #fdd4d7;
color blush = #eeadaa;
color mauvep = #d38f8f;
color spink = #c87377;
color purplep = #a77370;
color white = #ffffff;


void setup() {
  size(800, 600);
  background(255);
  cherryblossomtree();
}

void cherryblossomtree() {
  branches(0, 0);
  float c = 0;
  while (c <= 800) {
    flower(c, random(200, 500));
    c = c + 100;
  }
}

void branches(int x, int y) {
  strokeWeight(7);
  stroke(mahogany);
  fill(mahogany);
  rect(195, 320, 10, 80, 8);
  line(170, 225, 196, 320);
  line(260, 250, 205, 320);
  strokeWeight(5);
  line(257, 255, 230, 190);
  line(260, 250, 290, 160);
  line(120, 140, 170, 224);
  line(260, 250, 320, 270);
  strokeWeight(4);
  line(80, 180, 150, 190);
  line(320, 270, 360, 260);
  line(180, 270, random(100, 140), random(240, 300));
  line(170, 225, random(190, 240), random(160, 180));
  strokeWeight(3);
  line(278, 200, random(310, 350), random(150, 210));
}

void flower(float x, float y) {
  scale(random(0.07, 0.3));
  strokeWeight(2);
  stroke(ccandy);
  fill(ccandy);
  circle(120, 120, 6); //(0, 0, 6)

  pushMatrix();
  petals(120, 120);

  strokeWeight(1);
  int b = 0;
  while ( b < 5) {
    pushMatrix();
    stroke(mauvep);
    fill(mauvep);
    rotate(radians(72*b));
    line(-2, 0, random(-3, 0), random(-20, -10));
    line(2, 0, random(0, 3), random(-20, -10));
    popMatrix();
    b = b + 1;
  }
  circle(0, 0, 6);

  stroke(white);
  fill(white);
  circle(random(-10, -5), random(-5, 0), 4);
  circle(random(-5, 0), random(-5, 5), random(4, 6));
  circle(random(5, 10), random(-5, 5), random(4, 8));
  popMatrix();
}

void petals(float x, float y) {
  translate(x, y);
  int a = 0;
  while (a < 5) {
    pushMatrix();
    stroke(ccandy);
    fill(ccandy);
    rotate(radians(72*a));
    ellipse(30, 5, 30, 30);
    triangle(30, -10, 22, 17, 0, -5);
    popMatrix();
    a = a + 1;
  }
}
