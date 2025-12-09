class Ball
{
    //ATTRIBUTES
    int x, y;
    int xspeed, yspeed;
    int size;

    //CONSTRUCTOR
    Ball()
    {
      //  size = BSIZE;

        x = int(random(size/2, width - size/2) );
        y = int(random(size/2, height - size/2) );

        xspeed = 1;
        yspeed = 1;
    }//constructor


    // a method for this object to "show itself"
    void display()
    {
       circle(x, y, size);
    }



  void move()
    {
      
    }
}
