class Brick {

  int broken = 2;
  int rows;
  int columns;
  PVector[][] bricks;
  int xrectsize = width/10;
  int yrectsize = (height/2)/10;


  Brick(int rows, int columns) {
    this.rows = rows;
    this.columns = columns;
    bricks = new PVector[rows][columns];
  }

  void makebricks() {
    int x = 0;
    int y = 0;
    for (int i= 0; i< bricks.length; i++) {
      for (int g=0; i <bricks[g].length; g++) {
        println(bricks[i][g]);
        bricks[i][g].x = x;
        rect(x, y, x+xrectsize, y+yrectsize);
        x = x + xrectsize;
        bricks[i][g].y = y;
        println(bricks[i][g]);
      }
      y = y + yrectsize;
    }
  }

  void display() {
    fill(255, 0, 0);
    makebricks();
  }

  void assignvalues() {
    int[][] lives;
    for (int i= 0; i<bricks.length; i++) {
      for (int g=0; i <bricks[g].length; g++) {
      }
    }
  }

  void brokenbrick() {
    {
      if (broken ==2) {
        fill(255, 0, 0);
      }
      if (broken == 1) {
        fill(205, 0, 0);
      } else if (broken == 0) {
        fill(0);
      }
    }
  }
}
