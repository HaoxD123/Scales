Boolean shift = true;
void setup() {
  size(545, 545);  //feel free to change the size
  noLoop(); //stops the draw() function from repeating
  background(#27054D); 
}
void draw() {
  
  //fill (#886CA7); Original Color
  int R = (int) (Math.random()* 101 + 86); // 86 - 186
  int G = (int) (Math.random()* 101 + 58); // 58 - 158
  int B = (int) (Math.random()* 101 + 117); // 117 - 217
  fill(R, G, B );
  noStroke();
  
 
  //both ears (quad)
  //quad(20, 20, 40, 28, 40, 50, 22, 40);
  //quad(80, 20, 62, 28, 60, 50, 78, 40);
  
  //whole thing
  for(int x = 33; x < 540; x+= 60) {
    for (int y = 33; y < 540; y+= 60){
      if(shift == true){
  scale(y+15,x);
      } else{
  scale(y,x);
      }
    }
      if(shift == true){
shift = false;      
      } else {
  shift = true;
      }
  }
 
}

void scale(int x, int y) {
  
  //heads
  ellipse(x, y, 50, 40);
  ellipse(x - 30, y - 30, 5, 5);
  ellipse(x + 30, y - 30, 5, 5); 
  
  //left ears
  beginShape();
  vertex(x - 30, y - 30);
  vertex(x - 10, y - 22);
  vertex( x - 10, y);
  vertex(x -28, y - 10);
  endShape(CLOSE);
  
  //right ear
  beginShape();
  vertex(x + 30, y - 30);
  vertex(x + 12, y - 22);
  vertex(x + 10, y);
  vertex(x + 28, y - 10);
  endShape(CLOSE);

}


