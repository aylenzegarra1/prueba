class Historia{
  
  Pantalla [] pantallas;
  Boton [] botones;
  int cantPantallas = 25;
  
  Historia (){
    pantallas = new Pantalla [cantPantallas];
  }
  
  void dibujar (){
    for (int i = 0; i < cantPantallas; i++){
      pantallas.dibujar();
    }
  }
}
