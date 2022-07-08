
class autos {

  float x, x2;
  float y, y2;
  float vel, vel2;
  PImage auto1, auto2;



  //const
  autos () {
    x= 100;
    y= random(150, 400);
    vel=random (5, 15); //la velocidad mg asi
    auto1 = loadImage("a"+int(random(2))+".png");
    println (x);
  }



  void display () {
    image (auto1, x, y);
    //auto1.resize( int(95), int(60) );
  }

  void autosm () {
    x+=vel;
  }

  void reciclar() {
    if ( x > width ) {

      x = 0;
    }
  }
  void reciclar2() {
    x= 100;
    y= random(150, 400);
    vel=random (5, 15);
    auto1 = loadImage("a"+int(random(2))+".png");
  }



  float getX() {
    return x;
  }
  float getY() {
    return y;
  }
}
