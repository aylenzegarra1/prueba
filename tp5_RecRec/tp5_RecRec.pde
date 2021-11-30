//https://youtu.be/4W_Qit5814c

Juego juego;

void setup (){
  size (450,400);
  juego = new Juego ();
}

void draw(){
  background(0);
  juego.dibujar();
  
}

void keyPressed (){
  juego.teclaPresionada();
}

void mouseMoved (){
  juego.mover();
}
