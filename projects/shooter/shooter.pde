// declaration
Player p1;

ArrayList<Bullet> bulletList;

void setup() {
  size(1200, 800);
  
  // initialize vars
  p1 = new Player(width / 2, height - 50, 50, 50);
  
  bulletList = new ArrayList<Bullet>();
}

void draw(){
  background(42);
  
  p1.render();
  p1.move();
  
  // for loop i think
  for (Bullet aBullet : bulletList) {
    aBullet.render();
    aBullet.move();
    aBullet.checkRemove();
  }
  
  // removes unwanted bullets
  for (int i = bulletList.size()-1; i >=0; i=i-1) {
    Bullet aBullet = bulletList.get(i);
    
    if (aBullet.shouldRemove == true) {
      bulletList.remove(aBullet);
    }
  }
}

void keyPressed() {
  if(key == 'a') {
    p1.isMovingLeft = true;
  }
  
  if(key == 'd') {
    p1.isMovingRight = true;
  }
  
  if(key == ' ') {
    bulletList.add(new Bullet(p1.x, p1.y));
  }
}

void keyReleased() {
  if(key == 'a') {
    p1.isMovingLeft = false;
  }
  
  if(key == 'd') {
    p1.isMovingRight = false;
  }
}
