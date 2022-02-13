class Juego {

  
  int pantallaActual; //0 Inicio, 2 Juego, 2 Fin
  JPantalla pantallaInicio, pantallaFinM, pantallaFinD, pantallaPerdiste;
  int cantDiamantes;
  int cantMonedas;
  Personaje personaje;
  Moneda [] moneda;
  Diamante [] diamantes;
  int puntosM = 0;
  int puntosD = 0;
  int tiempoDeJuego;
  PImage imagen;

  
  Juego() {
    pantallaActual = 0;
    pantallaInicio = new JPantalla ("Hola!", "¿Podrás juntar la mayor cantidad \n de monedas o diamantes \n antes de que se acabe el tiempo?", "Apreta Espacio para jugar");
    pantallaFinM = new JPantalla ("Juntaste más monedas", "Seguis por el camino humilde...", "Click para volver a inicio");
    pantallaFinD = new JPantalla ("Juntaste más diamantes", "Seguis por el camino de la ambición...", "Click para volver a inicio");
    pantallaPerdiste = new JPantalla ("Perdiste", "Capaz te falta práctica", "Click para volver a inicio");

    cantMonedas = 5;
    cantDiamantes = 5;  
    tiempoDeJuego = 1100;
    personaje = new Personaje ();   
    moneda = new Moneda[cantMonedas];
    diamantes = new Diamante[cantDiamantes];
    imagen = loadImage ("ciudadArabe.jpg");


    for (int i = 0; i < cantMonedas; i++) {
      moneda[i] = new Moneda();
    }

    for (int i = 0; i < cantDiamantes; i++) {
      diamantes[i] = new Diamante();
    }
  }


  
  void dibujar() {
    if ( this.pantallaActual == 0) { //---------------------------inicio
      pantallaInicio.dibujar();
      this.pantallaActual = 0;
      this.puntosM = 0;
      this.puntosD = 0;
      this.tiempoDeJuego = 1100;
      for (int i = 0; i < cantMonedas; i++) {
        moneda[i] = new Moneda();
      }

      for (int i = 0; i < cantDiamantes; i++) {
        diamantes[i] = new Diamante();
      }
    } else if (this.pantallaActual == 1) {  //----------------------------------juego
      image(imagen, 0, 0, width, height);
      personaje.dibujar();
      fill (0);
      textSize (18);
      text ("Monedas " + puntosM + "/10", 65, 50);
      text ("Diamantes " + puntosD + "/10", 65, 80);
      text ("Tiempo: " + tiempoDeJuego, width-60, 50);
      if (tiempoDeJuego < 100){
        fill (255,0,0);
        text ("Tiempo: " + tiempoDeJuego, width-60, 50);
      }

      for (int i = 0; i < cantDiamantes; i++) {
        diamantes[i].dibujar();

        //evaluo colision
        if ( diamantes[i].colision (personaje.posXPj, personaje.posYPj, personaje.anchoP, personaje.altoP)) {
          puntosD++;
          
        }
      } 

      for (int i = 0; i < cantMonedas; i++) {
        moneda[i].dibujar();    

        //evaluo colision
        if ( moneda[i].colision (personaje.posXPj, personaje.posYPj, personaje.anchoP, personaje.altoP)) {
          puntosM++;
          
        }
      }
      if (puntosM >=  10|| puntosD >=  10) {
        println(" continuar ");
        if (puntosM > puntosD) {
          this.pantallaActual = 2;
        } else {
          this.pantallaActual = 3;
        }
      }
      tiempoDeJuego--;
      if (tiempoDeJuego <= 0) {
        this.pantallaActual = 4;
      }
    }
    if (this.pantallaActual == 2) {
      pantallaFinM.dibujar();

      println("DIBUJAR PANTALLA DE MONEDAS");
      if (mousePressed) {
        this.pantallaActual = 0;
        this.puntosM = 0;
        this.puntosD = 0;
      }
    } else if (this.pantallaActual == 3) {
      println("DIBUJAR PANTALLA DE DIAMANTES");
      pantallaFinD.dibujar();
      if (mousePressed) {
        this.pantallaActual = 0;
        this.puntosM = 0;
        this.puntosD = 0;
        this.tiempoDeJuego = 1100;
      }
    } else if (this.pantallaActual == 4) {
      println("PERDISTE");
      pantallaPerdiste.dibujar();
      if (mousePressed) {
        println(mouseX);
        this.pantallaActual = 0;
        this.puntosM = 0;
        this.puntosD = 0;
        this.tiempoDeJuego = 1100;
      }
    }
  }


  void teclaPresionada() {
    if (this.pantallaActual == 0) {
      cambiarSigPant();
    }
  }

  void cambiarSigPant() {
    if (this.pantallaActual == 0) {
      this.pantallaActual = 1;
    }
  }

  void mover() {
    personaje.mover();
  }
}
