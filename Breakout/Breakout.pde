Ball b0;
boolean moving;
int cols = 8;
int rows = 5;
Brick br;

void setup()
{
  size(1000, 800);
  moving = true;

  b0= new Ball();
  b0.xspeed = 2;
  b0.yspeed = 2;
  b0.size = 20;
  br = new Brick(rows, cols);
  br.bricksxy();
  br.assignvalues();
}

void draw() {
  background(0);
  b0.display();
  movepaddle();
  br.checkhit(b0);
  br.display();
  b0.move(moving);
  youlost();
}


void keyPressed()
{
  if (key == ' ') { //pauses
    moving = !moving;
  }
  if (key == 'r') { //restarts
    b0= new Ball();
    b0.xspeed = 2;
    b0.yspeed = 2;
    b0.size = 20;
    br = new Brick(rows, cols);
    br.bricksxy();
    br.assignvalues(); }
    if (key == 'n') { //speeds up
      b0.xspeed = b0.xspeed + 1;
      b0.yspeed = b0.yspeed + 1;
  }
}

void movepaddle() {
  rect(mouseX-20, height-50, 90, 20);
}

void youlost() {
  if (b0.lost) {
    background(0);
    textSize(50);
    textAlign(CENTER, CENTER);
    text("you lost", width/2, height/2);
  }
}
