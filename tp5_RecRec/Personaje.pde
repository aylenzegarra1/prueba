class Personaje{
  
  
  //Atributos
  PImage imagen;
  float posXPj, posYPj, anchoP, altoP;
  
  
  //Constructor
  Personaje(){
    this.imagen = loadImage ("aliBaba.png");
    this.posXPj = width/2;
    this.posYPj = 300;
    this.anchoP = 60;
    this.altoP = 60;
  }
  
  
  //Métodos
  void dibujar(){
    
    image (this.imagen,this.posXPj,this.posYPj,this.anchoP,this.altoP);

  }
  
  void mover(){
    this.posXPj = mouseX;
  }
  
  
}
