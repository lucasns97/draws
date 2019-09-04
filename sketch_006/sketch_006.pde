void setup() {
  size(600, 600);
}

Module m1 = new Module(1*float(600)/4, 1);
Module m2 = new Module(3*float(600)/4, 2);
int mp = 1;
void draw() {
  
  background(0);
  
  if (m2.x - m1.x < -250) {
    mp = 1;
  }
  if (m2.x - m1.x > 250) {
    mp = 0;
  }
  if (mp == 1) {
    m2.show();
    m2.update();
    m1.show();
    m1.update();
  }
  else {
    m1.show();
    m1.update();
    m2.show();
    m2.update();
  }

  
}


class Module {
  float tp, x, sz = 255;
  float acc;
  float speed = 0;
  
  Module (float px, int type) {
    tp = type;
    x = px;
    
  }
  void update() {
    this.acc = 0.8*cos(this.x/float(width) * PI);
    this.speed += this.acc;
    this.x += this.speed;
  }
  
  void show() {
    if (this.tp == 1) {
      for (int i = 0; i < sz; i++) {
        fill(i,0,0);
        noStroke();
        ellipse(this.x, height/2, sz-i, 2*sz-2*i);
        
      }
    }
    if (this.tp == 2) {
      for (int i = 0; i < sz; i++) {
        fill(0,0,i);
        noStroke();
        ellipse(this.x, height/2, sz-i, 2*sz-2*i);
        
      }
    }
  }
}
