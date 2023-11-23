Drops d[];

void setup() {
  size(1200, 700);
  background(0);
  
  d = new Drops[500];
  for (int i = 0; i < 500; i++) {
    d[i] = new Drops();
  }
}

void draw() {
  fill(0, 50);
  rect(0, 0, width, height);
  for (int i = 0; i < 500; i++) {
    d[i].display();
    
    if (d[i].y > height) {
      d[i] = new Drops();
    }
  }
}

class Drops {
  float x, y, speed; 
  color c;
  
  Drops() {
    init();
  }
  
  void init() {
    x = random(width);
    y = random(-300, 0);
    speed = random(5, 10);
    c = color(random(255), random(255), random(255));
  }
  
  void update() {
    y += speed;
  }
  
  void display() {
    fill(c);
    noStroke();
    rect(x, y, 2, 15);
    update();
  }
}
