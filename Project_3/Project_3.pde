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
color tactileColour = #FCEB4C;
color loadAndSave = #FCBD0D;
float sliderX = 425;
float selector = 2;
float stampSize = 50;

boolean drawCat;
boolean drawDog;

PImage eraser;
PImage cat;
PImage dog;

void setup() {
  size(600, 600);
  strokeWeight(5);
  drawBackground();
  eraser = loadImage("eraser.png");
  cat = loadImage("cat.png");
  dog = loadImage("dog.png");
}

void draw() {
  strokeWeight(5);
  fill(white);
  rect(5, 475, 590, 120);
  selector = map(sliderX, 350, 550, 2, 10);
  stroke(black);
  stampSize = map(sliderX, 350, 550, 20, 70);

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

  squareTactile(500, 550, 530, 580);
  rect(500, 530, 50, 50);
  stroke(black);
  image(cat, 497, 527, 55, 55);
  
  squareTactile(430, 480, 530, 580);
  rect(430, 530, 50, 50);
  stroke(black);
  image(dog, 429, 532, 50, 50);
  
  
  //showing thing
  if(drawCat == false && drawDog == false){
    stroke(colour);
    fill(colour);
    circle(370, 550, selector);
  }
  if(colour == white){
    stroke(black);
    strokeWeight(1);
    circle(370, 550, selector);
    noFill();
    strokeWeight(5);
  }
  noFill();
  circle(370, 550, 65);
  if (drawCat == true){
    image(cat, 340, 520, 60, 60);
  }
  if (drawDog == true){
    image(dog, 340, 520, 60, 60);
  }
  stroke(black);
  
  
  //delete
  fill(white);
  squareTactile(50, 90, 7, 42);
  rect(50, 7, 40, 35);
  image(eraser, 55, 9, 30, 30);
  stroke(black);
  
  //save
  squareTactile(490, 550, 7, 42);
  rect(490, 7, 60, 35);
  fill(loadAndSave);
  textSize(25);
  text("save", 497, 32);
  stroke(black);
  
  //load
  fill(white);
  squareTactile(420, 480, 7, 42);
  rect(420, 7, 60, 35);
  fill(loadAndSave);
  textSize(25);
  text("load", 428, 32);
  fill(white);
  stroke(black);
  
  
 
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
  
  //cat button
  if(mouseX > 500 && mouseX < 550 && mouseY > 530 && mouseY < 580) {
    drawCat = true;
    drawDog = false;
  }
  //dog button
  if(mouseX > 430 && mouseX < 480 && mouseY > 530 && mouseY < 580) {
    drawCat = false;
    drawDog = true;
  }
  
  if(mouseX > 50 && mouseX < 90 && mouseY > 9 && mouseY < 39) {
    drawBackground();
  }
  
  if(mouseX > 490 && mouseX < 550 && mouseY > 7 && mouseY < 42) {
    selectOutput("Choose a name for your image", "saveImage");
  }
  
  if(mouseX > 420 && mouseX < 480 && mouseY > 7 && mouseY < 42) {
    selectInput("Pick an image to load", "openImage");
  }
}

void sliderLocation() {
  if (mouseX > 350 && mouseX < 550 && mouseY > 475 && mouseY < 525) {
    sliderX = mouseX;
  }
}



void mouseDragged() {
  
  sliderLocation();

  if (mouseX > 50 && mouseX < 550 && mouseY > 50 && mouseY < 450) {
    if (drawCat == false && drawDog == false) {
      stroke(colour);
      strokeWeight(selector);
      line(pmouseX, pmouseY, mouseX, mouseY);
      stroke(black);
    } 
    if (drawCat == true){
      image(cat, mouseX-20, mouseY-20, stampSize, stampSize);
    }
    if (drawDog == true){
      image(dog, mouseX-20, mouseY-20, stampSize, stampSize);
    }
  fill(white);
  }
}
void drawBackground() {
  background(yellowyorange);
  rect(50, 50, 500, 400);
}

void drawButton(int x, int y, color colour) {
  if (dist(x, y, mouseX, mouseY) < 20) {
    stroke(tactileColour);
  } else {
    stroke(black);
  }
  fill(colour);
  circle(x, y, 40);
}

void button(int x, int y, color colours) {
  if (dist(x, y, mouseX, mouseY) < 20) {
    colour = colours;
    drawCat = false;
    drawDog = false;
  }
}

void squareTactile(int x, int x2, int y, int y2) {
  if(mouseX > x && mouseX < x2 && mouseY > y && mouseY < y2) {
    stroke(tactileColour);
  } else {
    stroke(black);
  }
}

void saveImage(File f) {
  if (f != null) {
    PImage canvas = get(50, 50, 500, 400);
    canvas.save(f.getAbsolutePath());
  }
}

void openImage(File f) {
  if (f != null) {
    int n = 0;
    while (n < 100) {
      PImage pic = loadImage(f.getPath());
      image(pic, 0, 0);
      n = n + 1;
    }
  }
}
      
