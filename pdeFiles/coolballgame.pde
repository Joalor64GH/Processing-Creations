float [] x;
float [] y;
float [] xDelta;
float [] yDelta;
int numOfBalls = 10;
int numOfBallsRemaining = numOfBalls;
int points = 0;

void setup() {
  size(500, 500);
  frameRate(60);
  
  x = new float[numOfBalls];
  y = new float[numOfBalls];
  xDelta = new float[numOfBalls];
  yDelta = new float[numOfBalls];
  
  for (int i = 0; i < numOfBalls; i++) {
    x[i] = random(10, 490);
    y[i] = random(10, 490);
    xDelta[i] = random(-3, 3);
    yDelta[i] = random(-3, 3);
  }
}

void draw() {
  background(0);
  fill(255, 255, 255);
  stroke(255, 0, 0);
  strokeWeight(3.5);
  println(millis());
  
  for(int i = 0; i < numOfBalls; i++) {
    ellipse(x[i], y[i], 20, 20);
    x[i] = x[i] + xDelta[i];
    y[i] = y[i] + yDelta[i];
    
    if((x[i] > width - 10) || (x[i] < 10)) {
      xDelta[i] = -xDelta[i];
    }
    if((y[i] > height - 10) || (y[i] < 10)) {
      yDelta[i] = -yDelta[i];
    }
  }
  textSize(32);
  fill(0, 0, 255);
  text("Points: " + points, 10, 30);
  if(numOfBallsRemaining == 0) {
    textSize(32);
    fill(0, 255, 0);
    text("You win!", 160, 250);
  }
}

void mousePressed() {
  for (int i = 0; i < numOfBalls; i++) {
    float dist = sqrt((x[i] - mouseX) * (x[i] - mouseX) + (y[i] - mouseY) * (y[i] - mouseY));
    if(dist <= 10) {
      x[i] = -100;
      y[i] = -100;
      int speedBonus = abs(int(xDelta[i] + xDelta[i]));
      int timeBonus = int((20000.0 / millis()) * 10);
      points = points + 10 + speedBonus + timeBonus;
      numOfBallsRemaining--;
      break;
    }
  }
}
