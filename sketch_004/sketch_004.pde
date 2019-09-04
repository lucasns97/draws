
Dot[] dots;
int n_dots = 1500;

void setup() {

  size(600, 600);
  dots = new Dot[n_dots];
  for (int i = 0; i < n_dots; i++) {
    dots[i] = new Dot();
  }
}

void draw() {
  background(0, 0, 0);
  for (int i = 0; i < n_dots; i++) {
    dots[i].show();
    dots[i].update();
  }
  int sz = 50;
  for (int i = 0; i < sz; i++) {
    noStroke();
    fill((255/50)*i, 0, 0);
    ellipse(width, height, sz-i, sz-i);
  }
}

class Dot {
  float x = random(0, width);
  float y = random(0, height);
  float speedX = random(-1, 1);
  float speedY = random(-1, 1);
  float acc = random(-1, 1);
  color col = color(random(200, 255), 0, 0);

  void show () {
    stroke(0);
    fill(col);
    ellipse(this.x, this.y, 5, 5);
  }

  void update() {
    acc = sin(acc + random(-1,1)) + cos(-acc + random(-1,1));
    speedX += acc;
    speedY += acc;
    x += speedX;
    y += speedY;
    if (hitWall(x, y) == 1) {
      speedX = -speedX;
    }
    if (hitWall(x, y) == 2) {
      speedY = -speedY;
    }
  }
}

int hitWall(float x, float y) {
  if (x + 0.5 > width || x - 0.5 < 0) {
    return 1;
  }
  if (y + 0.5 > height || y - 0.5 < 0) {
    return 2;
  }
  return 0;
}
