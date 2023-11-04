float x = 200;
float xDelta = 2;

float y = 70;
float yDelta = 2.5;

void setup() {
  size(500, 500);
  frameRate(60);
} 

void draw() {
  background(0);
  fill(255, 0, 0);
  stroke(0, 255, 0);
  strokeWeight(4);
  ellipse(x, y, 20, 20);
  
  x = x + xDelta;
  y = y + yDelta;
  
  if((x > width - 10) || (x < 10)) {
    xDelta = -xDelta;
  }
  
  if((y > width - 10) || (y < 10)) {
    yDelta = -yDelta;
  }
}
