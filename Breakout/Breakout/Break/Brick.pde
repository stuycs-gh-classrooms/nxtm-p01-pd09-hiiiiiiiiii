class Brick {

  int broken = 2;
  int rows;
  int columns;
  PVector[][] bricks;
  int xrectsize = width/10;//columns
  int yrectsize = (height/2)/5;//rows


  Brick(int rows, int columns) {
    this.rows = rows;
    this.columns = columns;
    bricks = new PVector[rows][columns];
  }

  void makebricks() {
    int x = 0;
    int y = 0;
    for (int i= 0; i < bricks.length; i++) {
      x = 0;
      y = y + yrectsize;
      println(y);
      for (int g=0; g < bricks[i].length; g++) {
        //println(bricks[i][g]);
        bricks[i][g] = new PVector(x, y);
        rect(x, y, xrectsize, yrectsize);
        x = x + xrectsize;
        println(bricks[i][g]);
      }
    }
  }

  void display() {
    fill(255, 0, 0);
    makebricks();
  }

  void assignvalues() {
    int[][] bricklives;
    bricklives = new int [rows][columns];
    for (int i= 0; i<bricks.length; i++) {
      for (int g=0; i <bricks[g].length; g++) {
        bricklives[i][g] = 2;
      }
    }
  }

  void brokenbrick(int [][] bricklives) {
    for (int i= 0; i < bricks.length; i++) {
      for (int g=0; g < bricks[i].length; g++) {
        {
          if (bricklives[i][g] ==2) {
            fill(255, 0, 0);
          }
          if (bricklives[i][g] == 1) {
            fill(205, 0, 0);
          } else if (bricklives[i][g] <= 0) {
            fill(0);
          }
        }
      }
    }
  }

  void checkhit(int[][] bricklives) {
     for (int i= 0; i<bricks.length; i++) {
      for (int g=0; i <bricks[g].length; g++) {
    if (/* a ball hit me*/ true) {
      bricklives[i][g] = bricklives[i][g] - 1;
    }
  }
}
  }
}
