void setup() {
  size(600, 600);
}


float var = 1000;
void draw() {
  background(0);
  translate(width/2, height/2);
  //rotate(var);
  noStroke();
  int sz = 90;
  for (float t = 0; t < sz*PI; t += 0.1) {
    var += PI*0.001;
    float r = t;
    if (int(var) % 3 == 0) {
      fill(0);
    }
    else{
      fill(255-255*t/(sz*PI), 0, 255*t/(sz*PI)); 
    }
    ellipse(r*cos(t), r*sin(t), 4, 4);
  }
  if (var > 3105.4){
    var = 1000;
  }
}
