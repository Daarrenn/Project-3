color red = #FF0000;
color orange = #FF6600;
color yellowyorange = #FAD558;
color yellow = #FEFF00;
float selector = 255;
color white = #FFFFFF;
color black = #000000;

float sliderX = 300;

void setup() {
  size(600, 600);
  strokeWeight(5);
}

void draw() {
  background(yellowyorange);
  selector = map(sliderX, 100, 500, 0, 300);
  stroke(black);
  
  line(100, 100, 500, 100);
  circle(sliderX, 100, 50);
  circle(300, 400, selector);
}

void mouseDragged() {
sliderLocation();
}

void mouseReleased() {
sliderLocation();
}
  
void sliderLocation() {
  if (mouseX > 100 && mouseX < 500 && mouseY > 75 && mouseY < 125) {
    sliderX = mouseX;
  }                                                             
}
