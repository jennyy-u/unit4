//jenny yu
//block 2-4
//april 16, 2025

//global variables
color indigo = #1860c3;
color mblue = #3d80cb;
color sky = #d1e8ff;
//color sky = #9eccfa;

color mahogany = #584748;
color ccandy = #fdd4d7;
color blush = #eeadaa;
color mauvep = #d38f8f;
color spink = #c87377;
color purplep = #a77370;
color cinnamon = #84592b;
color wood = #694722;
color white = #ffffff;
color silver = #e0e0e0;

int x, y;
int p = 0;
float percent = 0;
float position = 0;

void setup() {
  size(800, 600);
  background(sky);

  pushMatrix();
  cherryblossomtree(100, 0);
  popMatrix();
}

void cherryblossomtree(float x, float y) {
  pushMatrix();
  translate(x, y);
  branches(0, 0);
  //flower(0, 0);
  
  pushMatrix();
   float c = 0;
   while (c <= 30) {
   flower(random(100, 230), random(78, 200));
   c = c + 1;
   }
   popMatrix();
  
  popMatrix();
}

void branches(float x, float y) {
  pushMatrix();
  translate(x, y);
  scale(1.3);
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
  popMatrix();
}

void flower(float x, float y) {
  pushMatrix();
  translate(x, y);
  scale(random (0.1, 0.7));
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
