color red = #FF0000;
color orange = #FF6600;
color yellowyorange = #FAD558;
color yellow = #FEFF00;
color selector = #FFFFFF;

void setup() {
  size(600, 600);
  strokeWeight(5);
}

void draw(){
  background(yellowyorange);
  fill(selector);
  rect(50, 200, 500, 350);
  
  fill(red);
  circle(150, 100, 100);
  fill(orange);
  circle(300, 100, 100);
  fill(yellow);
  circle(450, 100, 100);
}
void mouseReleased(){
  if(dist(150, 100, mouseX, mouseY) < 50)  {
    selector = red;
  }
  if(dist(300, 100, mouseX, mouseY) < 50)  {
    selector = orange;
  }
  if(dist(450, 100, mouseX, mouseY) < 50)  {
    selector = yellow;
  }
}
