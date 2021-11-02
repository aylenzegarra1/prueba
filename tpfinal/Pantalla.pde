class Pantalla {
  
  PImage [] imagenes;
  
  Pantalla (){
    for (int i = 0; i < 30; i++){
      imagenes[i] = loadImage (i + ".jpg");
    }
  }
  
  void dibujar (){
    
    
  }
}
