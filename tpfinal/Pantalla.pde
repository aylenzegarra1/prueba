class Pantalla {
  
  PImage [] imagenes;
  
  Pantalla (){
    for (int i = 0; i < 30; i++){
      this.imagenes[i] = loadImage (i + ".jpg");
   }
  }
  
  void dibujar (){
    for (int j = 0; j < 30; j++){
    image (imagenes[j], 0,0);
    }
  }
}
