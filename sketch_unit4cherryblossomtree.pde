//global variables
color ccandy = #fdd4d7;
color mauvep = #d38f8f;
color sky = #d1e8ff;
color white = #ffffff;


void setup() {
  size(800, 600);
  background(sky);
  flower(random(width), random(height));
  /*
  int i = 0;
  while (i < 100) {
    flower(random(width), random(height));
    i++;
  }
  */
}


void flower(float x, float y) {
  pushMatrix();
  scale(random (0.25, 1));
  translate(x,y);
  stroke(ccandy);
  fill(ccandy);
  ellipse(0, 0, 20, 20);
  flowerPinkPetals(0, 0);
  flowerWhite(0, 0);
  flowerInside(0, 0);
  popMatrix();
}


void flowerPinkPetals(float x, float y) {
  pushMatrix();
  translate(x, y);
  int pP = 0;
  while (pP < 5) {
    pushMatrix();
    stroke(ccandy);
    fill(ccandy);
    rotate(radians(72*pP));
    ellipse(30, 5, 30, 30);
    triangle(30, -10, 22, 17, 0, -5);
    popMatrix();
    pP = pP + 1;
  }
  popMatrix();
}


void flowerWhite(float x, float y) {
  pushMatrix();
  translate (x, y);
  scale(random(0.3, 0.9));
  int w = 0;
  stroke(255);
  fill(255);
  while (w < 5) {
    ellipse(20, 0, 30, 10);
    rotate(radians(360/5));
    w = w + 1;
  }
  popMatrix();
}


void flowerInside(float x, float y) {
  pushMatrix();
  translate(x, y);
  strokeWeight(2);
  stroke(ccandy);
  fill(ccandy);

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
