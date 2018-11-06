 Bacteria b1 = new Bacteria;
 
 void setup(){     
 	size(400,400);
  background(255);
 }   
 
 void draw() {    
 	//move and show the bacteria   
 }  
 
 class Bacteria {     
 	int bactSize, bactX, bactY;
  
  void run() {
    
  }
   
   void show() {
    fill(255, 204, 217);
    ellipse (bactX, bactY, bactSize, bactSize);
    if (bactX < width && bactY < heigh) {
      bactX ++;
      bactY++;
    }else{
      restart();
  }
  
 }    
 
 
