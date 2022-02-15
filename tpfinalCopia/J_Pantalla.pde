class JPantalla {
  

  PFont fuente,fuente1;
  String texto1, texto2, texto3, texto4, texto5;
  PImage imagen;
  
  //constructores

  JPantalla (String texto1_, String texto2_){
    this.imagen = loadImage ("ciudadArabe.jpg");
    this.fuente = loadFont ("MaturaMTScriptCapitals-48.vlw");
    this.fuente1 = loadFont ("LucidaSans-Italic-48.vlw");
    this.texto1 = texto1_;
    this.texto2 = texto2_;
  }
  
   
  
  void dibujar (){
    
    image(imagen,0,0,width,height);
    textFont (fuente1);
    textSize (18);
    fill(0);
    text (this.texto1,70,60);
    fill(255);
    textFont (fuente);
    textSize (22);
    text (this.texto2,80,250);

  }
}
