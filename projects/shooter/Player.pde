class Player {
  // variables
  int x;
  int y;
  int w;
  int h;
  
  int speed;
  
  boolean isMovingLeft;
  boolean isMovingRight;
  
  // constructor
  Player(int startingX, int startingY, int startingW, int startingH) {
    x = startingX;
    y = startingY;
    w = startingW;
    h = startingH;
    
    isMovingLeft = false;
    isMovingRight = false;
    
    speed = 10;
  }
  
  // functions
  void render() {
    rect(x, y, w, h);
  }
  
  void move() {
    if(isMovingLeft == true) {
      x -= speed;
    }
    
    if(isMovingRight == true) {
      x += speed;
    }
  }
}
