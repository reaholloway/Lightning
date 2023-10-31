int startX = 150, startY = 0, endX = 150, endY = 0;
float inp;
void setup() {
  size(300, 300);
  strokeWeight(2);
  background(200);
}

void draw() {
}

void mousePressed() {
  // stroke((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
  inp = (float)Math.random();
  if (inp < .3) {  //want 30% execution here
    stroke(3);
  } else if (inp < .9) {  //want 60% execution here
    stroke((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
  } else {    //want 10% execution here
    stroke(255);
  }
  while (endY <= height) {
    fill(255, 0, 0, 200);
    endX = startX +((int)(Math.random()*18)-9);
    endY = startY +((int)(Math.random()*9));
    line(startX, startY, endX, endY);
    startX = endX;
    startY = endY;
  }
  startX = 150;
  endX = 150;
  startY = 0;
  endY = 0;
}

void keyPressed() {
  background(200);
}
