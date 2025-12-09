Ball b0;
boolean moving;

void setup()
{
    size(1000, 800);
    moving = true;
    
    b0= new Ball();
    b0.xspeed = 1;
    b0.yspeed = 1;
}

void draw() {
  background(0);
  
  b0.display();
  
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
