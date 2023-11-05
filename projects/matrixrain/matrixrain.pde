PFont theFont;

ArrayList<Stream> streams;
int tempWidth;

void setup() {
  size(1280, 720, P2D);
  
  theFont = createFont("Arial Unicode MS", 20);
  textFont(theFont);
  textAlign(CENTER, TOP);
  
  println(Integer.parseInt("314E", 16));
  
  streams = new ArrayList<Stream>();
  
  for(int x = 10; x < width; x += 20) {
    streams.add(new Stream(x));
  }
  
  tempWidth = width;
}

void draw() {
  background(0, 20, 0);
  
  if(tempWidth == width) {
    for(Stream s : streams) {
      s.update();
    }
  } else {
    streams.clear();
    
    for(int x = 10; x < width; x += 20) {
      streams.add(new Stream(x));
    }
    
    tempWidth = width;
  }
}
