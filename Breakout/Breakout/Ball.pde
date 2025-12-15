class Ball
{
  int x, y;
  int xspeed, yspeed;
  int size;
  boolean colision;
  boolean lost = false;

  Ball()
  {
    size = 20;

    x = int(random(0 + size, width - size/2) ); //random x cor
    y = int(random(height/2 + size + 20, height - 100) ); //random y cordinate thats not in the brick or below paddle

    xspeed = 2;
    yspeed = 2;
  }


  void display()
  {
    fill(255);
    circle(x, y, size); //ball
  }



  void move(boolean moving)
  {
    if (moving) {
      if (y >= height - size/2 ||
        y <= size/2) {
        yspeed *= -1;
      }//up/down bounce

      if (x >= width - size/2 ||
        x <= size/2) {
        xspeed *= -1;
      }//left/right bounce

      y+= yspeed;
      x+= xspeed;

      if (y + size/2 >= height - 50 && //bounces off paddle
        x >= mouseX - 20 &&
        x <= mouseX + 70 &&
        yspeed > 0) {

        yspeed *= -1;
      }
      if (y - size/2 > height-50) { //if it gets past paddle
        lost = true;
      }
    }
  }
}
