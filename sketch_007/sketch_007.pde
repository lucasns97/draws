void setup() {
  size(600, 600);
}

float var = 0;

void draw() {
  background(0);
  translate(width/2, height/2);
  var -= 0.01;
  rotate(var);
  noStroke();
  for (int c = 0; c <= 255; c += 51) {
    for (float t = 0; t <= 34*PI; t += 0.1) {
      float r = t*log(t);
      fill(255-c);
      ellipse(r*cos(t), r*sin(t), 4, 4);
    }
    rotate(var - 0.01);
  }
}
