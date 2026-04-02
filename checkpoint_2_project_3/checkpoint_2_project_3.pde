color red = #FF0000;
color orange = #FF6600;
color yellowyorange = #FAD558;
color yellow = #FEFF00;
color selector = #FFFFFF;
color white = #FFFFFF;
color black = #000000;

void setup() {
  size(600, 600);
  strokeWeight(5);
}

void draw() {
  background(yellowyorange);
  stroke(black);
  fill(selector);
  rect(50, 200, 500, 350);

  tactile(50, 200, 50, 150);
  fill(red);
  rect(50, 50, 150, 100);

  tactile(225, 375, 50, 150);
  fill(orange);
  rect(225, 50, 150, 100);

  tactile(400, 550, 50, 150);
  fill(yellow);
  rect(400, 50, 150, 100);
}

void mouseReleased() {
  if (mouseX > 50 && mouseX < 200 && mouseY > 50 && mouseY < 200) {
    selector = red;
  }
  
  if(mouseX > 225 && mouseX < 375 && mouseY > 50 && mouseY < 200) {
    selector = orange;
  }
  
  if(mouseX > 400 && mouseX < 550 && mouseY > 50 && mouseY < 200) {
    selector = yellow;
  }
}

void tactile(int x, int x2, int y, int y2) {
  if(mouseX > x && mouseX < x2 && mouseY > y && mouseY < y2) {
    stroke(white);
  } else {
    stroke(black);
  }
}
