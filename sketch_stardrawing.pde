//jenny yu
//block 2-4
//may 21, 2025

void setup() {
  size(800, 600);
  background(0);
  star(400, 300);
  
}

void star(float x, float y) {
   pushMatrix();
   translate(x, y);
   starCenter();
   starTriangle();
   popMatrix();
}


void starCenter() {
  int n = 100;
  while (n > 0) {
    strokeWeight(3);
    stroke(255);
    fill(255);
    circle(0, 0, n);
    n = n - 10;
  }
}

void starTriangle() {
  int s = 0;
  while (s <= 360) {
    stroke(255);
    fill(255);
    //scale();
    triangle(0, -50, 0, 50, 120, 0);
    rotate(radians(s));
    s = s + 90;
  }
}
