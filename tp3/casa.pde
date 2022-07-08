class casa {
  int x, y;
  PImage casaa;

  casa () {
    x=330;
    y= 4;
    casaa = loadImage("casa.png");
  }

  void hog() {
    image(casaa, x, y);
    // casaa.resize( int(150), int(100) );
  }
  int getX() {
    return x;
  }
  int getY() {
    return y;
  }
}
