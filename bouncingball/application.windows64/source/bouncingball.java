import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class bouncingball extends PApplet {

float x = 200;
float xDelta = 2;

float y = 70;
float yDelta = 2.5f;

public void setup() {
  
  frameRate(60);
} 

public void draw() {
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
  public void settings() {  size(500, 500); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "bouncingball" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
