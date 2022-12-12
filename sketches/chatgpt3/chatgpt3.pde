void setup() {
  size(500, 500, P3D);
  smooth();
}

void draw() {
  background(255);

  // move camera and center on 0,0,0
  camera(400 * cos(frameCount * 0.1), 0, 400 * sin(frameCount * 0.1), 0, 0, 0, 0, 1, 0);

  // draw a rotating cube
  fill(255, 0, 0);
  pushMatrix();
  rotateX(frameCount * 0.01);
  rotateY(frameCount * 0.01);
  box(100);
  popMatrix();

  // draw a spinning sphere
  fill(0, 255, 0);
  pushMatrix();
  translate(100, 0, 0);
  rotateY(frameCount * 0.01);
  sphere(50);
  popMatrix();

  // draw a moving pyramid
  fill(0, 0, 255);
  pushMatrix();
  translate(0, 100, 0);
  rotateZ(frameCount * 0.01);
  pyramid(50);
  popMatrix();

  // draw a pulsing cone
  fill(255, 255, 0);
  pushMatrix();
  translate(0, 0, 100);
  rotateX(frameCount * 0.01);
  cone(50 * sin(frameCount * 0.1), 100);
  popMatrix();
}

void pyramid(float size) {
  beginShape();
  vertex(0, 0, 0);
  vertex(size, 0, 0);
  vertex(size/2, 0, size);
  endShape(CLOSE);

  beginShape();
  vertex(0, 0, 0);
  vertex(size/2, 0, size);
  vertex(0, size, 0);
  endShape(CLOSE);

  beginShape();
  vertex(size, 0, 0);
  vertex(size/2, 0, size);
  vertex(0, size, 0);
  endShape(CLOSE);
}

void cone(float r, float h) {
  float angle = TWO_PI / 50;
  float halfHeight = h / 2;

  beginShape(TRIANGLE_FAN);
  vertex(0, halfHeight, 0);
  for (float a = 0; a < TWO_PI; a += angle) {
    vertex(r * cos(a), halfHeight, r * sin(a));
  }
  endShape();
}
