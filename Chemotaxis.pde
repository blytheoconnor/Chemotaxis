/* CHEMOTAXIS Project
 * For Computer Science 12
 * Goal: to create a simulation of an object using random walk, classes, and arrays
 * By: Blythe O'Connor
 * Due : November 15, 2018
 */
Bacteria[] bact;
int mouseNum = 0;

void setup(){
  size(500,400);
  background(255);
  noStroke();
  frameRate(7);
  bact = new Bacteria[11];                  //initializes the number of Bacteria you want
  for(int i = 0; i < bact.length;i++) {
    bact[i] = new Bacteria();
  }
}

void draw(){
int bactO = 200;
  for(int i = 0; i < bact.length;i++){
    bact[i].move();
  }
}

void mousePressed () {
  mouseNum++;
  if (mouseNum % 2 == 0) {
    background (255);
  }else{
    background(0);
  }
}

 class Bacteria {     
 	int bactSize, bactX, bactY, myColour, bactO, r, g, b;
  
  Bacteria() {
    bactSize = 15;
    bactX = (int)(Math.random() * width);
    bactY = (int)(Math.random() * height);
    bactO = 140;
    r = (int)(Math.random() * 255);
    g = (int)(Math.random() * 255);
    b = (int)(Math.random() * 255);
    myColour = color(r,g,b,bactO);
  }
  
  void move() {
   if (mouseX < bactX) {
     bactX -= ((int)(Math.random() * 20) - 5) + bactSize;
   } else {
     bactX += ((int)(Math.random() * 20) - 10) + bactSize;
   }
   if (mouseY < bactY) {
     bactY -= ((int)(Math.random() * 20) - 5) + bactSize;
   } else {
     bactY += ((int)(Math.random() * 20) - 10) + bactSize;
   }
   show();
}
  
  void show() {
    fill(myColour);
    ellipse(bactX, bactY, bactSize, bactSize);
  }
 }
