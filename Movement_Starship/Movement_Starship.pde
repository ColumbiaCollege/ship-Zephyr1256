//Jacob Cantanho -- Intro to Programming -- Movement Starship code

//variables for position
float xPos =0;
float yPos = 0;

//Booleans for movement
boolean right = false;
boolean left = false;
boolean up = false;
boolean down = false;
boolean boost = false;
//Booleans for color change
boolean red = false;
boolean white = true;

void setup() {
  //window modifications
  size(1000, 800);
  background(0);

  //initial position
  xPos = width/2;
  yPos = height/2;

  //shape properties
  noStroke();
  fill(175);
}

void draw() {
  //wipe
  background(0);

  //update position
  if (left) {
    xPos = xPos - 2;
    if (boost) {
    xPos = xPos -3;
    }
  }
  if (right) {
    xPos = xPos + 2;
    if (boost) {
    xPos = xPos + 3;
    }
  }
  if (up) {
    yPos = yPos-2;
    if (boost) {
      yPos = yPos-3;
    }
  }
  if (down) {
    yPos = yPos+2;
    if (boost) {
      yPos = yPos+3;
    }
  }
  if (red) {
    fill(200,0,0);
  }
  if (white) {
    fill(200);
  }

  //draw shape
  ellipse(xPos, yPos, 25, 25);
  triangle(xPos+40, yPos, xPos+8, yPos+8, xPos+8, yPos-8);
  triangle(xPos-40, yPos, xPos-8, yPos-8, xPos-8, yPos+8);
  triangle(xPos, yPos+40, xPos+8, yPos+8, xPos-8, yPos+8);
  triangle(xPos, yPos-40, xPos-8, yPos-8, xPos+8, yPos-8);
}

//Start movement on key press
void keyPressed() {
  if (key == 'a') {
    left = true;
    right = false;
  }
  if (key == 'd') {
    right = true;
    left = false;
  }
  if (key == 'w') {
    up = true;
    down = false;
  }
  if (key == 's') {
    down = true;
    up = false; 
  }
  if (key == 'r') {
    red = true;
    white = false;
  }
  if (key == 'r') {
    boost = true;
  }
}

//Stop movement on key release
void keyReleased() {
  if (key == 'a') {
    left = false;
  }
  if (key == 'd') {
    right = false;
  }
  if (key == 'w') {
    up = false;
  }
  if (key == 's') {
    down = false;
  }
  if (key == 'r') {
    red = false;
    white = true;
  }
  if (key == 'r') {
    boost = false;
  }
}
