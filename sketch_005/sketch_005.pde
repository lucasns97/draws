
Dot[] dots1;
Dot[] dots2;
Dot[] dots3;
int n_dots = 600;

void setup() {
  frameRate(60);

  size(600, 600);
  dots1 = new Dot[n_dots];
  for (int i = 0; i < n_dots; i++) {
    dots1[i] = new Dot((float(width)/n_dots)*i, height/4, color(random(200, 255), 0, 0));
  }
  
  dots2 = new Dot[n_dots];
  for (int i = 0; i < n_dots; i++) {
    dots2[i] = new Dot((float(width)/n_dots)*i, (height)/2, color(random(200, 255), random(200, 255), 0));
  }
  
  dots3 = new Dot[n_dots];
  for (int i = 0; i < n_dots; i++) {
    dots3[i] = new Dot((float(width)/n_dots)*i, (3*height)/4, color(0, random(200, 255), 0));
  }
}

void draw() {
  background(0);
  for (int i = 0; i < n_dots; i++) {
    dots1[i].show();
    dots1[i].update();
    
    dots2[i].show();
    dots2[i].update();
    
    dots3[i].show();
    dots3[i].update();
  }
}

class Dot {
  float x, y;
  float speedY;
  float acc;
  color col;
  float yOffSet;
  
  Dot(float px, float py, color c) {
    x = px;
    y = py + (width/30)*sin(x/(2*PI));
    col = c;
    yOffSet = py;
  }

  void show () {
    stroke(0);
    fill(this.col);
    ellipse(this.x, this.y, 3, 2);
  }

  void update() {
    if (this.y >= yOffSet) {
      this.acc = sin(this.y - yOffSet);
    } else {
      this.acc = sin(this.y - yOffSet);
    }
    this.speedY += acc;
    this.y += speedY;
  }
}
