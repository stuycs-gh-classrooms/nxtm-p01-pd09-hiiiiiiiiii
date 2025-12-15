class Ball
{
    int x, y;
    int xspeed, yspeed;
    int size;
    boolean colision;

    Ball()
    {
      //  size = BSIZE;

        x = int(random(0+ size, width - size/2) );
        y = int(random(height/2 + size,height) );

        xspeed = 1;
        yspeed = 1;
    }


    void display()
    {
       circle(x, y, size);
    }



  void move()
    {
      /*if (y >= height - size/2 ||
            y <= size/2) {
            yspeed *= -1;
        }//up/down bounce

        if (x >= width - size/2 ||
            x <= size/2) {
            xspeed *= -1;
        }//left/right bounce

        y+= yspeed;
        x+= xspeed; */
    }
    
    boolean colide() {
     
      return colision;
    }
    

}
