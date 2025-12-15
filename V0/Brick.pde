class Brick {

  int broken = 2;
  int[][] bricks;
  int rows;
  int columns;
  int xrectsize = width/columns;
  int yrectsize = (height/2)/rows;

  Brick() {
    bricks = new int[rows][columns];
  }

  void makebricks() {
    int x = 0;
    int y= 0;
    for (int i= 0; i<bricks.length; i++) {
      for (int g=0; i <bricks[g].length; g++) {
        rect(x, y, x+xrectsize, y+yrectsize);
        x = x + xrectsize;
        y = y + yrectsize;
      }
    }
  }
  
void display() {
 makebricks(); 
}

void brokenbrick() {
  if (broken == 1) {
    
  }
  
  if (broken == 0) {
  
  }
}
}
