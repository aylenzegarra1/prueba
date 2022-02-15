class Moneda {

  PImage imagen;
  float posXMoneda, posYMoneda;
  float ancho, alto;


  Moneda () {
    this.imagen = loadImage ("moneda.png");
    this.ancho = 20;
    this.alto = 20;
    sortearUbicacion();
  }


  void sortearUbicacion () {
    posXMoneda = random (0, width);
    posYMoneda = random (-height, 0);
  }

  void dibujar () {

    image (this.imagen, this.posXMoneda, this.posYMoneda, this.ancho, this.alto);
    this.posYMoneda++;  

    if (this.posYMoneda >= height) {
      println("Suelo", this.posYMoneda);
      this.sortearUbicacion();
    }
  }


  boolean colision(float posXPj, float posYPj, float anchoP, float altoP) {
    if (
      posXPj-anchoP/2 < posXMoneda + ancho/2
      && posXPj+anchoP/2 > posXMoneda-ancho/2
      && posYPj-altoP/2 < posYMoneda-alto/2
      && posYPj+altoP/2 > posYMoneda+alto/2
      ) {
      //hay colision
      sortearUbicacion();
      return true;
    } else {
      return false;
    }
  }
}
