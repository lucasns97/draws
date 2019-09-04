void setup() {
  size(600, 600);
}

void draw() {
  int tam = width/500;
  int sz = 1;
  background(255);
  noStroke();
  for (int y = 0; y <= height; y += tam) {
    for (int x = 0; x <= width; x += tam) {
      for (int i = 0; i < tam; i += sz) {
        translate(x, y);
        rotate(PI/(2.00001));
        fill(255*i/(tam));
        rect(i + x, y, sz, tam);
      }
    }
  }
}
