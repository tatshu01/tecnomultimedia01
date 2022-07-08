
//https://youtu.be/7GW6zgduels

avg avgg;
//juego juegoo;

void setup(){
  size(800, 600);

avgg = new avg();
//juegoo = new juego(); 
  
  
}

void draw (){
avgg.estados();
avgg.dibujar();

}
  
void mousePressed(){
 avgg.escenas();

}
void mouseMoved(){
//avgg.juegoo.mouse(); //mala practica?? (si pero funciona)
avgg.mouse(); //buena practica
}
