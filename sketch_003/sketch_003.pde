void setup(){
  
  size(600, 600);
  
}

void draw(){
  background(0,0,0);
  for (int t = 0; t < 1800; t += 1) {
     if (random(1) < 0.5){
       fill(random(200, 225), 0, random(0, 70));
     }
     else {
       fill(random(0, 70), 0, random(200, 225));
     }
     float r = float(t)/5;
     ellipse(r*cos(float(t)/50) + width/2,r*sin(float(t)/20) + width/2,2,r);
  }
}
