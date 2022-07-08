class avg {

  //variables
  boolean CreditosComenzar, NoGrita, NoSube, cinturonSiNo, perdonSiNo, siguienteI, siguienteII, CreditosReinicio1, siguienteIII, boda, fin, CreditosReinicio2, CreditosReinicio3, CreditosReinicio4, CreditosReinicio5;
  String estado; //el estado en el juego esta en int, cambiar eso
  float px, py;
  String [] a;
  PFont fuente2; 
  int yt = 540;
  PImage p, g, i;
  //boolean e, o, comenzar =false; //medio al cuete, las variables funcionan en la clase juego (donde esta la colision)

//ANOTACIONES: 
// 1. usar .equals para para el estado ==. Ej: if (estado.equals("presentacion"))
// 2. la clase avgg se podria dividir en mas Ej. el boton boolean o void escenas


  //clases
  fondos fondoss;
  juego juegoo;


  //botones de av
  boolean botones (float px1, float px2, float py1, float py2) { 
    if (mouseX >= px1 && mouseX <=px2 && mouseY>=py1 && mouseY <=py2) {
      return true;
    }
    return false;
  }

  avg() {
    inicializarvariables();
    p = loadImage("gp2.jpg");
    g = loadImage("gp1.jpg");
    i = loadImage("inicio.jpg");


    fondoss = new fondos();
    //juegoo = new juego();


    a = loadStrings("textobot.txt");
    fuente2=loadFont("Inter-SemiBold-25.vlw");
  }

  //imagen y texto asignado a un estado
  void estados() {

    //println (estado);
    //println ("a" + a);
    //println ("o" + o);
    //println (comenzar);

    if (estado=="presentacion") {
      fondoss.mostrarpantallas(0);
      fondoss.texto(a[0], 165, yt, a[1], 503, yt, fuente2);

      CreditosComenzar=true;
    }

    if (estado=="montañarusa") {
      fondoss.mostrarpantallas(2);
      fondoss.texto(a[3], 180, yt, a[4], 487, yt, fuente2);
      NoSube=true;
    }
    if (estado =="acasa") { //aca iria el juego
      image(i, 0, 0);
    }
    if (estado=="juego") {       //lis
      juegoo.update();
      juegoo.draw();
     juegoo.pantallas();
      juegoo.e();
    }
    if (estado =="perdiste") {
      image(p, 0, 0);
    }

    if (estado=="ganaste") {
      image (g, 0, 0);
    }

    if (estado=="subeaMR") {
      fondoss.mostrarpantallas(3);
      fondoss.texto(a[5], 170, 535, a[7], 167, 555, fuente2);
      fondoss.texto(a[6], 479, 535, a[7], 487, 555, fuente2);
      cinturonSiNo=true;
    }
    if (estado=="arrancaMR") {
      fondoss.mostrarpantallas(4);
      fondoss.texto(a[8], 151, yt, a[9], 468, yt, fuente2);

      NoGrita=true;
    }
    if (estado== "mosca") {
      fondoss.mostrarpantallas(5);
      fondoss.textoind(a[10], 506, yt, fuente2);
      siguienteII=true;
    }
    if (estado=="volando") {
      fondoss.mostrarpantallas(6);
      fondoss.textoind(a[10], 506, yt, fuente2);
      siguienteI=true;
    }
    if (estado=="muereI") {
      fondoss.mostrarpantallas(7);
      fondoss.texto(a[2], 174, yt, a[1], 503, yt, fuente2);

      CreditosReinicio2=true;
    }

    if (estado=="vomita") {
      fondoss.mostrarpantallas(8);
      fondoss.texto(a[11], 157, yt, a[12], 521, yt, fuente2);
      perdonSiNo=true;
    }
    if (estado=="novios") {
      fondoss.mostrarpantallas(9);
      boda=true;
    }

    if (estado== "muereII") {
      fondoss.mostrarpantallas(11);
      fondoss.texto(a[2], 174, yt, a[1], 503, yt, fuente2);
      CreditosReinicio4=true;
    }
    if (estado == "muereIII") {
      fondoss.mostrarpantallas(12);
      fondoss.texto(a[2], 174, yt, a[1], 503, yt, fuente2);
      CreditosReinicio3=true;
    }

    if (estado == "pelea") {
      fondoss.mostrarpantallas(10);
      fondoss.textoind(a[10], 506, yt, fuente2);
      siguienteIII=true;
    }
    if (estado == "creditos") {
      fondoss.mostrarpantallas(14);
      fondoss.creditos();
      siguienteIII=true;
    }

    if (estado == "boda") {
      fondoss.mostrarpantallas(13);
      fondoss.texto(a[2], 174, yt, a[1], 503, yt, fuente2);
      siguienteIII=true;
    }
  }

  //el click de los botones
  void escenas() {


    if ((estado=="presentacion") && (CreditosComenzar==true)) {
      if (botones(139, 234, 486, 578)) {
        estado="montañarusa";
      } else if
        (botones(464, 676, 486, 578)) {
        estado="creditos";
      }
    }

    if ((estado=="montañarusa") && (NoSube==true)) {
      if (botones(139, 234, 486, 578)) {
        estado="subeaMR";
      } else if
        (botones(464, 676, 486, 578)) {
        estado="acasa";
      }
    }


    if ((estado=="subeaMR") && (cinturonSiNo==true)) {
      if (botones(139, 234, 486, 578)) {
        estado="arrancaMR";
      } else if  (botones(464, 676, 486, 578)) {
        estado="volando";
      }
    }

    if ((estado=="volando") && (siguienteI==true)) {
      if (botones(464, 676, 486, 578)) {
        estado="muereI";
      }
    }

    if ((estado=="muereI")&& (CreditosReinicio2==true)) {
      if (botones(139, 234, 486, 578)) {
        estado="presentacion";
        inicializarvariables();
      } else if (botones(464, 676, 486, 578)) {
        estado="creditos";
      }
    }
    if ((estado=="arrancaMR")&& (NoGrita==true)) {
      if (botones(139, 234, 486, 578)) {
        estado="mosca";
      } else if (botones(464, 676, 486, 578)&& (NoGrita==true)) {
        estado="vomita";
      }
    }


    if ((estado=="mosca")&& (siguienteII==true)) {
      if (botones(464, 676, 486, 578)) {
        estado="muereIII";
      }
    }

    if ((estado=="muereIII")&& (CreditosReinicio3==true)) {
      if (botones(139, 234, 486, 578)) {
        estado="presentacion";
        inicializarvariables();
      } else if (botones(464, 676, 486, 578)&& (CreditosReinicio3==true)) {
        estado="creditos";
      }
    }

    if ((estado=="arrancaMR") && (NoGrita=true)) {
      if (botones(464, 676, 486, 578)) {
        estado="vomita";
      }
    }
    if ((estado=="vomita")&& (perdonSiNo==true)) {
      if (botones(139, 234, 486, 578)) {
        estado="novios";
      } else if (botones(464, 676, 486, 578)&& (perdonSiNo==true)) {
        estado="pelea";
      }
    }

    if ((estado=="pelea")&& (siguienteIII==true)) {
      if (botones(464, 676, 486, 578)) {
        estado="muereII";
      }
    }

    if ((estado=="muereII")&& (CreditosReinicio4==true)) {
      if (botones(139, 234, 486, 578)) {
        estado="presentacion";
        inicializarvariables();
      } else if (botones(464, 676, 486, 578)&& (perdonSiNo==true)) {
        estado="creditos";
      }
    }


    if ((estado=="novios")&& (boda==true)) {
      if (botones(464, 676, 486, 578)) {
        estado="boda";
      }
    }

    if ((estado=="boda")&& (CreditosReinicio5==true)) {
      if (botones(139, 234, 486, 578)) {
        estado="presentacion";
        inicializarvariables();
      } else if (botones(464, 676, 486, 578)&& (perdonSiNo==true)) {
        estado="creditos";
      }
    }
    if ((estado =="acasa") && (mousePressed) && (mouseY > 488 && mouseX > 301 && mouseY <565 && mouseX < 488)) {
      //comenzar =true;
      estado="juego";
      //e =false;
    // o =false;
    }
   if (estado=="ganaste" && mousePressed && mouseY > 488 && mouseX > 301 && mouseY <565 && mouseX < 488) {
     estado="presentacion";
     inicializarvariables();
    }

  if (estado=="perdiste" && mousePressed && mouseY > 488 && mouseX > 301 && mouseY <565 && mouseX < 488) {
  estado="presentacion";
     inicializarvariables();
 }
  }

  //fusion entre aventura y juego (imagenes)
  void dibujar() {
  if (juegoo.gano()) {
     estado="ganaste";
   //  o=true;
    // e=false;
    }
    if (juegoo.perdio()) {
      estado="perdiste";
     // o=true;
    }
  }
  
  //movimiento de joe
  void mouse(){
  juegoo.mouse();
  }



  //reinicio
  void inicializarvariables() { 
    estado="presentacion";
    CreditosComenzar=false;
    NoGrita=false;
    NoSube=false;
    cinturonSiNo=false;
    perdonSiNo=false;
    siguienteI=false;
    siguienteII=false;
    CreditosReinicio1=false;
    boda=false;
    fin=false;
    siguienteIII=false;
    CreditosReinicio2=false;
    CreditosReinicio3=false;
    CreditosReinicio4=false;
    CreditosReinicio5=false;
    juegoo = new juego();
  }
}
