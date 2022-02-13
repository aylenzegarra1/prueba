class JPantalla {
  

  PFont fuente,fuente1;
  String saludo, explicacion,volver;
  PImage imagen;
  

  JPantalla (String saludo, String explicacion, String volver){
    this.imagen = loadImage ("ciudadArabe.jpg");
    this.fuente = loadFont ("MaturaMTScriptCapitals-48.vlw");
    this.fuente1 = loadFont ("LucidaSans-Italic-48.vlw");
    this.saludo = saludo;
    this.explicacion = explicacion;
    this.volver = volver;
  }
  
  void dibujar (){
    
    image(imagen,0,0,width,height);
    textAlign(CENTER);
    textFont (fuente);
    textSize (30);
    fill(0);
    text (this.saludo,220,60);
    textFont (fuente1);
    textSize (18);
    text (this.explicacion,220,100);
    textFont (fuente);
    fill(255);
    textSize (28);
    text (this.volver,220,350);

  }
}
