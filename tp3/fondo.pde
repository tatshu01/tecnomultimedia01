class fondo {
  int x, y;
  PImage f;

//ANOTACION: esta clase podria estar adentro de juego 

  fondo () {

    x=0;
    y=0;
    f= loadImage("fondo.jpg");
  }
  void imagen() {
    image (f, x, y);
  }
}
