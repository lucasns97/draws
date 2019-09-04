void setup(){
   
  size(600, 600);
  
}

void draw(){
  background(0,0,0);
  int tam = 10;
  for (int x = 0; x <= width; x += tam) {
    for (int y = 0; y <= height; y += tam) {
      float px = x;
      float py = y;
      stroke(random(1, 40), random(1, 255), random(200, 255));
      line(0, 0, px, py);
      
    }
  }
  
  for (int i = 0; i <= 100; i++) {
    fill(255-i, 255 - i, 150+ i);
    noStroke();
    if (i == 0){
      stroke(0, 0, 230);
    }
    ellipse(0, 0, width/2 - 3*i, width/2 - 3*i);
  }
}
