class Ball
{
    int x, y;
    int xspeed, yspeed;
    int size;
    boolean colision;

    Ball()
    {
      //  size = BSIZE;

        x = int(random(size/2, width - size/2) );
        y = int(random(size/2, height - size/2) );

        xspeed = 1;
        yspeed = 1;
    }


    void display()
    {
       circle(x, y, size);
    }



  void move()
    {
      
    }
    
    boolean colide() {
     
      return colision;
    }
    

}
