void setup() {
  size(600, 600);
}

float var = 0;

void draw() {
  background(0);
  translate(width/2, height/2);
  var -= 0.01;
  //rotate(var);
  noStroke();
  for (float t = 0; t <= 100*PI; t += 0.1) {
    float r = t*cos(t);
    fill(255-255*t/(100*PI));
    ellipse(r*cos(t), r*sin(t), 4, 4);
  }
  rotate(PI);
  for (float t = 0; t <= 100*PI; t += 0.1) {
    float r = t*cos(t);
    fill(255-255*t/(100*PI));
    ellipse(r*cos(t), r*sin(t), 4, 4);
  }
}
