boolean DEBUG = true;
Aventura aventura;

void setup (){
  size (400,300);
  aventura = new Aventura ();
}

void draw (){
  background (0);
  aventura.dibujar();
}

void mouseClicked (){
  aventura.mousePresionado();
}

void keyPressed (){
  aventura.teclaPresionada();
}
