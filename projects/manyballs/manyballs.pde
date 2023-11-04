float [] x;
float [] y;
float [] xDelta;
float [] yDelta;
int numOfBalls = 50;

void setup() {
  size(500, 500);
  frameRate(60);
  
  x = new float[numOfBalls];
  y = new float[numOfBalls];
  xDelta = new float[numOfBalls];
  yDelta = new float[numOfBalls];
  
  for(int i = 0; i < numOfBalls; i++) {
    x[i] = random(10, 490);
    y[i] = random(10, 490);
    xDelta[i] = random(-3, 3);
    yDelta[i] = random(-3, 3);
  }
} 

void draw() {
  background(0);
  fill(255, 0, 0);
  stroke(0, 255, 0);
  strokeWeight(4);
  
  for(int i = 0; i < numOfBalls; i++) {
    ellipse(x[i], y[i], 20, 20);
    x[i] = x[i] + xDelta[i];
    y[i] = y[i] + yDelta[i];
    
    if((x[i] > width - 10) || (x[i] < 10)) {
      xDelta[i] = -xDelta[i];
    }
    if((y[i] > width - 10) || (y[i] < 10)) {
      yDelta[i] = -yDelta[i];
    }
  }
}
