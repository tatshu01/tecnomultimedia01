class juego {

  String estado;
  // PImage p, g, i;
  boolean e =false;
  boolean o =false;
  boolean comenzar =false;





  joe joee;
  autos obst;
  autos[] autosarr;
  fondo fondoo;
  casa casaa;


  juego() {

    estado = "juego";
    //p = loadImage("gp2.jpg");
    //g = loadImage("gp1.jpg");
    //i = loadImage("inicio.jpg");

    joee = new joe(345, 450, 2, 50); 

    fondoo= new fondo();
    casaa= new casa();
    autosarr = new autos [6];

    for (int i= 0; i < 6; i++) {
      autosarr[i]= new autos();
    }
  }

  //estado y booleans condicionan
  void pantallas() {

    if (estado=="acasa") {
      if ((mousePressed) && (mouseY > 488 && mouseX > 301 && mouseY <565 && mouseX < 488))
        estado="juego";
    }
    if (estado=="juego") {
      comenzar=true;
      draw();
      update();
      e();

      if (estado=="perdiste") {
        estado="presentacion";
      }
      if ((mousePressed) && (mouseY > 488 && mouseX > 301 && mouseY <565 && mouseX < 488)) {
        reciclar();
        estado="presentacion";
      }
    } else if (estado== "ganaste") {
      image (g, 0, 0);
      if ((mousePressed) && (mouseY > 488 && mouseX > 301 && mouseY <565 && mouseX < 488)) {
        reciclar();
        estado="presentacion";
      }
      //println( e);
      //println(o);
    }
  }

  //para la aventura
  boolean gano() {
    if (joee.x <  casaa.x + 150  && joee.x > casaa.x && joee.y <  casaa.y + 100 && joee.y > casaa.y && e==true && o ==false && comenzar==true) {
      return true;
    }
    return false;
  }


  void e() {
    if ( joee.x < 800  && joee.x > 1 && joee.y < 120   && joee.y > 0 ) {

      e=true;
    } else if (joee.x < 800  && joee.x > 1 && joee.y > 120   && joee.y < 600) {
      e=false;
    }
  }

  //dibujo del juego

  void mouse() {
    joee.moverConMouse();
  }
  void update() {
    for (int i= 0; i < 6; i++) { 
      autosarr[i].reciclar();

      // autosarr[i].autosm();
    }
  }
  void reciclar() {
    for (int i= 0; i < 6; i++) { 
      autosarr[i].reciclar2();
    }
  }

  void draw() {
    println( e);
    println(o);

    fondoo.imagen();
    casaa.hog();
    joee.display();
    //joee.colision(autosarr);
    //joee.colision2(casaa);
    // if (estado=="uno"){ //era la manera de comenzar en el estado juego en el tp5
    for (int i= 0; i < 6; i++) {
      autosarr[i].display();
      autosarr[i].autosm();
    }
  }


  //para la aventura
  boolean perdio() {
    for (int i= 0; i < 6; i++) { 
      if  (joee.x <  autosarr[i].x + 90 && joee.x >  autosarr[i].x && joee.y <   autosarr[i].y + 30 && joee.y >  autosarr[i].y && e==false && o ==false && comenzar==true) {
        return true;
      }
    }
    return false;
  }
}
