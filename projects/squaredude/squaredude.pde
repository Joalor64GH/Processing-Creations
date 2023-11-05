// declaration
Player p1;

void setup() {
  size(1200, 800);
  
  // initialize var
  p1 = new Player(width / 2, height / 2, 50, 50);
}

void draw(){
  background(42);
  
  p1.render();
  p1.move();
  
  textSize(32);
  fill(255, 255, 255);
  text("CONTROLS \n WASD to move", 10, 30);
}

void keyPressed() {
  if(key == 'a') {
    p1.isMovingLeft = true;
  }
  
  if(key == 'd') {
    p1.isMovingRight = true;
  }
  
  if(key == 'w') {
    p1.isMovingUp = true;
  }
  
  if(key == 's') {
    p1.isMovingDown = true;
  }
}

void keyReleased() {
  if(key == 'a') {
    p1.isMovingLeft = false;
  }
  
  if(key == 'd') {
    p1.isMovingRight = false;
  }
  
  if(key == 'w') {
    p1.isMovingUp = false;
  }
  
  if(key == 's') {
    p1.isMovingDown = false;
  }
}
