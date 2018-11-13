Bacteria[]bacteria;

void setup(){
  size(400,400);
  background(0);
  bact = new Baceria[11];
  for(int i = 0; i < bact.length;i++)
  {
    bact[i] = new Bacteria();
  }
}
void draw(){
  for(int i = 0; i < dots.length;i++)
  {
    dots[i].move() ;
  }
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
 
 
