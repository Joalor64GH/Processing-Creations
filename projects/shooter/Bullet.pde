class Bullet {
  // variables
  int x;
  int y;
  int d;
  
  int speed;
  
  boolean shouldRemove;
  
  // constructor
  Bullet(int startingX, int startingY) {
    x = startingX;
    y = startingY;
    
    d = 5;
    
    speed = 15;
    
    shouldRemove = false;
  }
  
  // functions
  void render() {
    circle(x, y, d);
  }
  
  void move() {
    y -= speed;
  }
  
  void checkRemove() {
    if (y < 0) {
      shouldRemove = true;
    }
  }
}
