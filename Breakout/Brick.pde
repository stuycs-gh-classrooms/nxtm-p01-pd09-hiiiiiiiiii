class Brick {

  int broken = 2;
  int rows;
  int columns;
  PVector[][] bricks; 
  int xrectsize;
  int yrectsize;
  int[][] bricklives;
  color b2 = color(255, 0, 0); // color of fully alive brick
  color b1 = color(180, 0, 50); //color of hit once brick



  Brick(int rows, int columns) {
    this.rows = rows;
    this.columns = columns;
    this.xrectsize = width/columns;
    this.yrectsize = (height/2)/rows;
    bricks = new PVector[rows][columns]; 
    bricklives = new int[rows][columns];
  }

  void bricksxy() { //sets the x and y values of the bricks
    int x = 0;
    int y = 0;
    for (int i= 0; i < bricks.length; i++) {
      x = 0; //restarts the x value
      y = y + yrectsize; //goes onto next row
      for (int g=0; g < bricks[i].length; g++) {
        bricks[i][g] = new PVector(x, y);
        // rect(x, y, xrectsize, yrectsize);
        x = x + xrectsize;
        println(bricks[i][g]);
      }
    }
  }

  void display() {
    for (int i = 0; i < bricks.length; i++) {
      for (int g = 0; g < bricks[i].length; g++) {
        if (bricklives[i][g] <= 0) {
          fill(0); //makes it black if there are no lives
        } else if (bricklives[i][g] == 1) {
          fill(b1);
        } else {
          fill(b2); //makes it js red
        }
        rect(bricks[i][g].x, bricks[i][g].y, xrectsize, yrectsize); //actually makes the bricks
      }
    }
  }

  void assignvalues() {
    for (int i= 0; i < bricks.length; i++) {
      for (int g=0; g < bricks[i].length; g++) {
        bricklives[i][g] = 2; //every brick starts w 2 lives
      }
    }
  }


  void checkhit(Ball b) {
    for (int i= 0; i < bricks.length; i++) {
      for (int g=0; g < bricks[i].length; g++) {

        float bx = bricks[i][g].x; // bc the ball is nt always at an integer
        float by = bricks[i][g].y;
        if (bricklives[i][g] >= 0) {


        if (b.x + b.size/2 > bx && b.x - b.size/2 < bx + xrectsize &&
          b.y + b.size/2 > by && b.y - b.size/2 < by + yrectsize) {

          bricklives[i][g] = bricklives[i][g] - 1;
          b.yspeed *= -1;
          return;
        }
      }
    }
  }
}
}
