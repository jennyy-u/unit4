//jenny yu
//block 2-4
//april 8, 2025


//global variables
color sand = #e8d1a7;
color olive = #9d9167;
color wood = #84592b;
color mocha = #654321;
color cherry = #743014;


//color[] one = { blue, red, cyan };
//color[] two  = { green, yellow, magenta };
//color[] three = {};
//color[] four = {};
//color[] five = {};


void setup() {
  size(800, 600);
  background(sand);
  //colorMode(HSB, 360, 25);
  //float x = random(0, 255);
  //int count = 0;
  //while (count < 10) {
  //house(random(100, 500), random(100, 500), random(0.25, 1)); //(x, y, scale factor)
  //count = count + 1;
  //}
  int a, b;
  a = 50;
  b = 50;
  while (b < 600) {
    house(a, b, 0.25);
    a = a + 150;
    if ( a >= 800) {
      a = 50;
      b = b + 150;
    }
  }
}


void draw() {
}


void house(float x, float  y, float s) {
  pushMatrix();
  translate(x, y);
  //rotate(PI/2);
  scale(s);

  float r, g, b;
  r = random(0, 255);
  g = random(0, 255);
  b = random(0, 255);
  front(r, g, b);
  door(r, g, b);
  window(225, 120, r, g, b); //side
  window(140, -40, r, g, b); //top
  chimney(r, g, b);

  popMatrix();
}

void front(float r, float b, float g) {
  //stroke(olive); fill(olive);
  stroke(r, g, b);
  fill(r, g, b);
  strokeWeight(3);
  rect(0, 0, 400, 300);
  triangle(0, 0, 200, -150, 400, 0);
  //frame
  //stroke(wood); fill(wood);
  stroke(r, g, b);
  fill(r, g, b);
  strokeWeight(8);
  line(0, 300, 400, 300);
  line(200, -150, -15, 15);
  line(200, -150, 415, 15);
}

void door(float r, float g, float b) {
  //stroke(wood); fill(cherry);
  strokeWeight(5);
  rect(50, 100, 120, 200);
  strokeWeight(3);
  //fill(wood);
  fill(r, g, b);
  circle(155, 200, 10);
}

void window(float x, float y, float r, float g, float b) {
  strokeWeight(5);
  //stroke(wood); fill(sand);
  stroke(r, g, b);
  fill(r, g, b);
  rect(x, y, 125, 100);
  strokeWeight(2);
  line(x, y+50, x+125, y+50);
  line(x+63, y, x+63, y+100);
}

void chimney(float r, float g, float b) {
  //stroke(mocha); fill(mocha);
  stroke(r, g, b);
  fill(r, g, b);
  rect(30, -100, 50, 10);
  //stroke(wood); fill(wood);
  stroke(r, g, b);
  fill(r, g, b);
  rect(40, -87, 30, 30);
  triangle(40, -56, 70, -56, 40, -29);
}
