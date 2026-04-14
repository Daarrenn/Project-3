color red = #FC2E17;
color orange = #FF6600;
color yellowyorange = #FAD558;
color yellow = #FEFF00;
color lGreen = #56FF03;
color dGreen = #15892B;
color lBlue = #51B2FA;
color dBlue = #000EFC;
color purple = #6C00FC;
color pink = #FA8DB3;
color brown = #835C13;
color white = #FFFFFF;
color black = #000000;
color colour = #000000;
float sliderX = 425;
float selector = 2;

PImage eraser;
PImage cat;

void setup() {
  size(600, 600);
  strokeWeight(5);
  drawBackground();
  eraser = loadImage("eraser.png");
  cat = loadImage("cat.png");
}

void draw() {
  strokeWeight(5);
  fill(white);
  rect(5, 475, 590, 120);
  selector = map(sliderX, 350, 550, 0, 10);
  stroke(black);
  
  //slider
  line(350, 500, 550, 500);
  circle(sliderX, 500, 30);
  //colours
  drawButton(40, 510, red);  
  drawButton(90, 510, orange);  
  drawButton(140, 510, yellow);  
  drawButton(190, 510, lGreen);  
  drawButton(240, 510, dGreen);
  drawButton(290, 510, lBlue);
  drawButton(40, 560, dBlue);
  drawButton(90, 560, purple);
  drawButton(140, 560, pink);
  drawButton(190, 560, brown);
  drawButton(240, 560, black);
  drawButton(290, 560, white);
  image(eraser, 275, 545, 30, 30);
  
  rect(500, 530, 50, 50);
  image(cat, 497, 527, 55, 55);
}



void mouseReleased() {
  sliderLocation();
  button(40, 510, red);
  button(90, 510, orange);
  button(140, 510, yellow);
  button(190, 510, lGreen);
  button(240, 510, dGreen);
  button(290, 510, lBlue);
  button(40, 560, dBlue);
  button(90, 560, purple);
  button(140, 560, pink);
  button(190, 560, brown);
  button(240, 560, black);
  button(290, 560, white);
  
}
  
void sliderLocation() {
  if (mouseX > 350 && mouseX < 550 && mouseY > 475 && mouseY < 525) {
    sliderX = mouseX;
  }                                                             
}



void mouseDragged() {
  if(mouseX > 50 && mouseX < 550 && mouseY > 50 && mouseY < 450){
    stroke(colour);
    strokeWeight(selector);
    line(pmouseX, pmouseY, mouseX, mouseY);
    stroke(black);
  }
  fill(white);
  sliderLocation();
}

void drawBackground() {
  background(yellowyorange);
  rect(50, 50, 500, 400);
}

void drawButton(int x, int y, color colour) {
  fill(colour);
  circle(x, y, 40);
}

void button(int x, int y, color colours) {
  if(dist(x, y, mouseX, mouseY) < 20) {
    colour = colours;
  }
}
