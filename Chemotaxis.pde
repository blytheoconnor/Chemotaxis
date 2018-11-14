/* CHEMOTAXIS Project
 * For Computer Science 12
 * Goals: to create a simulation of an object using random walk
 * By: Blythe O'Connor
 * Due : November 15, 2018
 */
Bacteria[] bact;

void setup(){
  size(400,400);
  background(255);
  noStroke();
  bact = new Bacteria[1];
  for(int i = 0; i < bact.length;i++)
  {
    bact[i] = new Bacteria();
  }
}

void draw(){
  for(int i = 0; i < bact.length;i++)
  {
    bact[i].move();
  }
}

 class Bacteria {     
 	int bactSize, bactX, bactY, myColor;
  
  Bacteria() {
    bactSize = 10;
    bactX = width/2;
    bactY = height/2;
    int myColor = color(255,0,0);
  }
  
  void move() {
    if (mouseX < bactX) {
      bactX += (Math.random() * 20);
    } else {
      bactX += (Math.random()* 20);
    }
    if (mouseY < bactY) {
      bactY += (Math.random() * 20);
    } else {
      bactY += (Math.random() * 20);
    }
    show();
  }
   
   void show() {
    fill(myColor);
    ellipse (bactX, bactY, bactSize, bactSize);
  
 }
 }
