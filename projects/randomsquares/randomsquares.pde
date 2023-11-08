int[][] arr = new int[10][10];

void setup() {
  size(640, 640);
  background(0);
  noStroke();
  setupPattern();
}

void draw() {
  for(int y = 0; y < 10; y++) {
    for(int x = 0; x < 10; x++) {
      fill(arr[x][y] * 255);
      rect(x * 64, y * 64, 64, 64);
    }
  }
}

// clicking changes the pattern
void mousePressed() {
  setupPattern();
}

void setupPattern() {
  for(int y = 0; y < 10; y++) {
    for(int x = 0; x < 10; x++) {
      arr[x][y] = (int)random(0, 2);
    }
  }
}
