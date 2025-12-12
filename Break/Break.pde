Ball b0;
boolean moving;
int cols = 10;
int rows = 5;
Brick br;

void setup()
{
    size(1000, 800);
    moving = true;
    
    b0= new Ball();
    b0.xspeed = 1;
    b0.yspeed = 1;
    b0.size = 20;
    br = new Brick(rows,cols);

}

void draw() {
  background(0);;
  b0.display();
  movepaddle();
  br.display();
  b0.move();
}


void keyPressed()
{
    if (key == ' ') {
        moving = !moving;
    }
    if (key == 'r') {
        b0 = new Ball();
    }
}

void movepaddle() {
  rect(mouseX-20,height-50,90,20);
}
