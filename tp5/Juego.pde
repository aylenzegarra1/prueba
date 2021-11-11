class Juego {

  //Atributos
  int pantallaActual; //0 Inicio, 2 Juego, 2 Fin
  Pantalla pantallaInicio, pantallaFinM, pantallaFinD;
  boolean juntoMasMonedas;
  boolean juntoMasD;
  int cantDiamantes;
  int cantMonedas;
  Personaje personaje;
  Moneda [] moneda;
  Diamante [] diamantes;
  int puntosM = 0;
  int puntosD = 0;
  
  //Constructor
  Juego() {
    pantallaActual = 0;
    pantallaInicio = new Pantalla ("Hola! Apreta Espacio para jugar");
    pantallaFinM = new Pantalla ("Juntaste más monedas");
    pantallaFinD = new Pantalla ("Juntaste más diamantes");
    cantMonedas = 150;
    cantDiamantes = 150;
    juntoMasMonedas = false;    
    personaje = new Personaje ();   
    moneda = new Moneda[cantMonedas];
    diamantes = new Diamante[cantDiamantes];


    for (int i = 0; i < cantMonedas; i++) {
      moneda[i] = new Moneda();
  }
  
  for (int i = 0; i < cantDiamantes; i++) {
      diamantes[i] = new Diamante();
    }
  
}



  //Métodos
  void dibujar() {
  if (this.inicioDelJuego()){ //---------------------------inicio
    pantallaInicio.dibujar();
    
  }else if (this.estoyJugando()){  //----------------------------------juego
    personaje.dibujar();
       fill (255);
       textSize (16);
       text ("Monedas " + puntosM, 20, 50);
       //---
       fill (255);
       textSize (16);
       text ("Diamantes " + puntosD, 20, 80);

    for (int i = 0; i < cantDiamantes; i++) {
      diamantes[i].dibujar();
      
      //evaluo colision
      if( diamantes[i].colision (personaje.posXPj, personaje.posYPj, personaje.anchoP, personaje.altoP)){
       puntosD++;
       println (puntosD);
     }
    } 

    for (int i = 0; i < cantMonedas; i++) {
      moneda[i].dibujar();    
      
      //evaluo colision
     if( moneda[i].colision (personaje.posXPj, personaje.posYPj, personaje.anchoP, personaje.altoP)){
       puntosM++;
       println (puntosM);
     }
    }

    
  } else if((this.puntosM <=10)){
    pantallaFinM.dibujar();
    cambiarSigPant();      //--------------------------------------------------------------fin
  }
    else if (this.pantallaFinD()){   
      pantallaFinD.dibujar(); 
  }
    
  }


  
  boolean inicioDelJuego(){
    return pantallaActual == 0;
  }
  
  boolean estoyJugando(){
    return pantallaActual == 1;
  }
  
  boolean pantallaFinM(){
    return pantallaActual == 2;
  }
  
  boolean pantallaFinD(){
    return pantallaActual == 3;
  }
  
 
  
  void teclaPresionada(){
    if (this.inicioDelJuego()){
    cambiarSigPant();}    
  else if (this.estoyJugando()){   
    
  }else if (this.pantallaFinM()){
    cambiarSigPant();
   }
  
  }
  

  
  
  void cambiarSigPant(){
    if (this.inicioDelJuego()){
      pantallaActual++;
    }else if (this.estoyJugando()){
     pantallaActual++;
    } else {
      
    }
  }
    
    
  }
