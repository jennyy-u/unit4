//jenny yu
//block 2-4
//may 21, 2025

//global variables
color indigo = #1860c3;
color mblue = #3d80cb;
color sky = #d1e8ff;

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



void setup() {
  size(800, 600);
  background(sky);
  pushMatrix();
  float star = 0;
  while (star < 800) {
    star(random(0, 800), random(0, 350));
    star = star + 30;
  }
  popMatrix();
  snow();
  bridge();
}



//object 1-------------------------------------------------------------------------------




//object 2-------------------------------------------------------------------------------
void star(float x, float y) {
  pushMatrix();
  translate (x, y);
  scale(random(0.02, 0.15));
  starCenter();
  starTriangle();
  popMatrix();
}

void starCenter() {
  int n = 100;
  while (n > 0) {
    strokeWeight(3);
    stroke(white);
    fill(white);
    circle(0, 0, n);
    n = n - 10;
  }
}

void starTriangle() {
  int s = 0;
  while (s <= 360) {
    stroke(white);
    fill(white);
    triangle(0, -50, 0, 50, 120, 0);
    rotate(radians(s));
    s = s + 90;
  }
}



//object 3-------------------------------------------------------------------------------
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
  popMatrix();
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
