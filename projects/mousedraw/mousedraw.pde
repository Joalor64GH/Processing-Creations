void setup() {
  size(500, 500);
  background(0);
  frameRate(60);
}

void draw() {}

void mouseDragged() {
  fill(random(0, 225), random(0, 225), random(0, 225));
  ellipse(mouseX, mouseY, 20, 20);
}

void keyPressed() { // if any key is pressed, the screen is cleared
  if (keyPressed == true) {
    clear();
  }
}
