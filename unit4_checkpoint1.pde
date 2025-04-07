//jenny yu
//block 2-4
//april 7, 2025

color pink = #ffb7a1
color bee = #efbc68
color sage = #919f89
color mist = #c8cfd6
color blueg = #95a1ae


void setup() {
  size(800, 600);
}


void draw() {
  face(200, 100); //(x, y)
  face(500, -200);
}

void face(int x, int y) {
 pushMatrix();
 translate(x, y); //redefining (0, 0)
 
 hair();
 eye(); //left
 eye(); //right
 mouth();
 
 popMatrix();
}
