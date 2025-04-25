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
color cinnamon = #84592b;
color wood = #694722;
color white = #ffffff;


void setup() {
  size(800, 600);
  background(#d3d3d3);
  pushMatrix();
  cherryblossomtree();
  popMatrix();
  snow();
  bridge();
}

void cherryblossomtree() {
  branches(0, 0);
  pushMatrix();
  float c = 20;
  while (c <= 40) {
    flower(random(350, 450), random(350, 450));
    //flowerB(random(350, 450),  random(350, 450));
    c = c + 1;
  }
  popMatrix();
}


void flowerB(float x, float y) {
  pushMatrix();
  translate (x, y);
  scale(random(0.3, 0.9));
  int p = 0;
  fill(255);
  while (p < 5) {
    ellipse(20, 0, 30, 10);
    rotate(radians(360/5));
    p = p + 1;
  }

  ellipse(0, 0, 20, 20);


  popMatrix();
}


//-----------------------------------------------------------------------

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
  pushMatrix();
  translate(x, y);
  //scale(random(0.07, 0.3));
  scale(1);
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
  pushMatrix();
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
  popMatrix();
  popMatrix();
}

//-----------------------------------------------------------------------

void snow() {
  strokeWeight(5);
  stroke(white);
  fill(white);
  pushMatrix();
  float s = -10;
  while (s < 800) {
    ellipse(s, 400, random(10, 20), random(3, 10));
    ellipse(s, 428, random(10, 20), random(3, 5));
    ellipse(s, 448, random(10, 20), random(3, 5));
    ellipse(s, 463, random(10, 20), random(3, 5));
    ellipse(s, 500, random(20, 30), random(3, 12));
    s = s + 10;
  }
}

void bridge() {
  strokeWeight(5);
  stroke(wood);
  fill(wood);
  line(0, 405, 800, 405);
  strokeWeight(7);
  line(0, 430, 800, 430);
  line(0, 465, 800, 465);


  pushMatrix();
  int ln = 20;
  while (ln < 800) {
    strokeWeight(7);
    strokeCap(PROJECT);
    line(ln, 435, ln, 500);
    ln = ln + 120;
  }
  popMatrix();

  pushMatrix();
  int lln = 80;
  while (lln < 800) {
    strokeWeight(7);
    stroke(wood);
    line(lln, 455, lln, 500);
    lln = lln + 60;
  }
  popMatrix();

  stroke(cinnamon);
  strokeWeight(5);
  fill(cinnamon);
  line(0, 400, 800, 400);
  strokeWeight(7);
  line(0, 450, 800, 450);
  rect(0, 500, 800, 10);



  pushMatrix();
  int l = 0;
  while (l < 800) {
    strokeWeight(7);
    strokeCap(PROJECT);
    stroke(cinnamon);
    line(l, 411, l, 500);
    l = l + 120;
  }
  popMatrix();

  pushMatrix();
  int ll = 60;
  while (ll < 800) {
    strokeWeight(7);
    stroke(cinnamon);
    line(ll, 455, ll, 500);
    ll = ll + 60;
  }
  popMatrix();
}
