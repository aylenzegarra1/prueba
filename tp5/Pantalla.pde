class Pantalla {
  
  String mensaje;
  
  Pantalla (String mensaje){
    this.mensaje = mensaje;
    
  }
  
  void dibujar (){
    
    text (this.mensaje,150,height/2);
    
  }
}
