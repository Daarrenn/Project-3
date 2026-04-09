color red = #FF0000;
color orange = #FF6600;
color yellowyorange = #FAD558;
color yellow = #FEFF00;
color white = #FFFFFF;
color black = #000000;
color colour = #000000;
float sliderX = 425;
float selector = 2;

void setup() {
  size(600, 600);
  strokeWeight(5);
  background(yellowyorange);
  rect(50, 50, 500, 400);
}

void draw() {
  strokeWeight(5);
  rect(5, 475, 590, 120);
  selector = map(sliderX, 350, 550, 0, 10);
  stroke(black);
  
  line(350, 500, 550, 500);
  circle(sliderX, 500, 30);

}



void mouseReleased() {
sliderLocation();
}
  
void sliderLocation() {
  if (mouseX > 350 && mouseX < 550 && mouseY > 475 && mouseY < 525) {
    sliderX = mouseX;
  }                                                             
}



void mouseDragged() {
  if(mouseX > 50 && mouseX < 550 && mouseY > 50 && mouseY < 450){
    fill(colour);
    strokeWeight(selector);
    line(pmouseX, pmouseY, mouseX, mouseY);
  }
  fill(white);
  sliderLocation();
}
