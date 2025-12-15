class Brick {

  int broken = 2;
  PVector[][] bricks;
  int rows;
  int columns;
  int xrectsize = width/columns;
  int yrectsize = (height/2)/rows;

  Brick() {
    bricks = new PVector[rows][columns];
  }

  void makebricks() {
    int x = 0;
    int y= 0;
    for (int i= 0; i<bricks.length; i++) {
      for (int g=0; i <bricks[g].length; g++) {
        rect(x, y, x+xrectsize, y+yrectsize);
        x = x + xrectsize;
      }
      y = y + yrectsize;
    }
  }

  void display() {
    makebricks();
  }

  void assignvalues() {
    for (int i= 0; i<bricks.length; i++) {
      for (int g=0; i <bricks[g].length; g++) {

      }
    }
  }

  void brokenbrick() {
    {
      if (broken ==2) {
       fill(255,0,0); 
      }
      if (broken == 1) {
        fill(205,0,0);
      }

      else if (broken == 0) {
        fill(0);
      }
    }
  }
}
