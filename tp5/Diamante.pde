class Diamante {
  
  
  //Atributos
  PImage imagen;
  float posXDiamante, posYDiamante;
  int ancho, alto;
  
  //Constructor
  Diamante (){
    this.imagen = loadImage ("diamante.png");
    this.ancho = 20;
    this.alto = 20;
    sortearUbicacion();
  }
  
  
  //Métodos
  void dibujar(){
    image (this.imagen,this.posXDiamante,this.posYDiamante,this.ancho,this.alto);
    this.posYDiamante++;
  }
  
  void sortearUbicacion (){
      posXDiamante = random (0, width) * 10;
      posYDiamante = random (-600) * 5;
    }
    
    //metodo p evaluar colision
    boolean colision(float posXPj, float posYPj, float anchoP, float altoP){
      if (
      posXPj-anchoP/2 < posXDiamante + ancho/2
     && posXPj+anchoP/2 > posXDiamante-ancho/2
     && posYPj-altoP/2 < posYDiamante-alto/2
     && posYPj+altoP/2 > posYDiamante+alto/2
      ){
        //hay colision
        sortearUbicacion();
        return true;

      }else{
        return false;
      }
    }
}
