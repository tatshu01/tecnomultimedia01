class fondos { //falta cargar el juego

  PImage[] fondos = new PImage [15];
  float x, y;
  float ys =700;
  //String [] a;
  int x2, y2;
  float t;
  PFont fuente;


  //IMAGENES

  fondos() {
    x=0;
    y=0;
    fuente=loadFont("Inter-Regular-48.vlw");
    //fuente2=loadFont("Inter-SemiBold-14.vlw");
    //a = loadStrings("textobot.txt"); 

    for (int i =0; i<15; i++) {
      fondos[i]= loadImage( i + ".jpg");
    }
  }
  void mostrarpantallas(int n) {
    image (fondos[n], 0, 0);
  }


  void creditos() {

    textFont(fuente); 

    fill(0);
    textSize(40);

    text ("             DIRECTOR: Florencia \n PRODUCTOR: Florencia \n GUIONISTA: Florencia \n CAMAROGRAFO: Mercedes", 130, ys);
    ys--;
  }


  //TEXTO (arreglo)

  void texto ( String aa, int x, int y, String aaa, int xx, int yy, PFont fuente2) {
    pushStyle();
    textSize(12);
    textFont(fuente2);
    fill(0);
    text( aa, x, y );
    text( aaa, xx, yy );
    popStyle();
  }

  void textoind ( String aa, int x, int y, PFont fuente2) { //se pueden llamar ambas void texto y utilizarlas con sus dif. parametros
    pushStyle();
    textSize(12);
    textFont(fuente2);
    fill(0);
    text( aa, x, y );
    popStyle();
  }
}
