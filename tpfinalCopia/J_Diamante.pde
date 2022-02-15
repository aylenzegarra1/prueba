class Diamante {


  PImage imagen;
  float posXDiamante, posYDiamante;
  int ancho, alto;


  Diamante () {
    this.imagen = loadImage ("diamante.png");
    this.ancho = 20;
    this.alto = 20;
    sortearUbicacion();
  }


  
  void sortearUbicacion () {
    posXDiamante = random (0, width);
    posYDiamante = random(-height, 0);
  }
  
  void dibujar() {
    image (this.imagen, this.posXDiamante, this.posYDiamante, this.ancho, this.alto);
    this.posYDiamante++;
    
    if (this.posYDiamante >= height) {
      println("Suelo", this.posYDiamante);
      this.sortearUbicacion();
    }
  }


  //metodo p evaluar colision
  boolean colision(float posXPj, float posYPj, float anchoP, float altoP) {
    if (
      posXPj-anchoP/2 < posXDiamante + ancho/2
      && posXPj+anchoP/2 > posXDiamante-ancho/2
      && posYPj-altoP/2 < posYDiamante-alto/2
      && posYPj+altoP/2 > posYDiamante+alto/2
      ) {
      //hay colision
      sortearUbicacion();
      return true;
    } else {
      return false;
    }
  }
}
