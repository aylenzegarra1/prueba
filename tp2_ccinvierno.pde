int posYTexto;
PImage imagen;

void setup (){
  size (400,400);
  posYTexto = 0;
  imagen = loadImage ("loki_logo2.png");
}

void draw (){
  background (100);
  println (posYTexto);
  
  image (imagen,100,posYTexto);
  
  posYTexto++;
  
  if (posYTexto >= 150){
    posYTexto = 150;
  }
}
