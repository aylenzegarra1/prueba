class Personaje{
  
  PImage imagen;
  float posXPj, posYPj, anchoP, altoP;
  
 
  Personaje(){
    this.imagen = loadImage ("aliBaba.png");
    this.posXPj = width/2;
    this.posYPj = 220;
    this.anchoP = 60;
    this.altoP = 60;
  }
  
  

  void dibujar(){   
    image (this.imagen,this.posXPj,this.posYPj,this.anchoP,this.altoP);
   //println ("dibujar");
  }
  
  void mover(){
    this.posXPj = mouseX;
  }
  
  
}
