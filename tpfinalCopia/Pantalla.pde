class Pantalla {
    
  
  //atributos
           
  PImage imgA;
  PFont fontA1, fontA2;
  String textoA, textoA2, textoA3;
  
  
  //constructores
   
  Pantalla (int imgA_,String textoA_, String textoA2_){        // PANTALLA INICIO
    
    this.fontA1 = loadFont ("MaturaMTScriptCapitals-48.vlw");
    
    this.imgA = loadImage (imgA_ + ".jpg");
    this.textoA = textoA_;
    this.textoA2 = textoA2_;

  }
  
  Pantalla (int imgA_, String textoA3_){    //PANTALLAS AVENTURA
    
    this.imgA = loadImage (imgA_ + ".jpg");
    this.fontA2 = loadFont ("Candara-48.vlw");
    this.textoA3 = textoA3_;
    
  }

 
  
  //métodos
  
  void dibujarPantallaInicio(){  //PANTALLA INICIO

    image(this.imgA, 0,0);
    fill(#FFA717);
    textFont(this.fontA1);
    textSize(40);
    text(this.textoA, 100, 100);
    textSize(30);
    text(this.textoA2, 60, 150);
  }
  
  
  void dibujarPantallasA (){  //PANTALLAS AVENTURA
  
    image(this.imgA, 0,0);
    fill (0,100);
    float altoRectangulo = (1+int(textoA3.length())/38)*16 ;
    rect (0, 0, 400, altoRectangulo);
    textFont(this.fontA2);
    textSize(16);
    fill (10,50);
    text(this.textoA3, 10, 20);
    fill (255);
    text(this.textoA3, 10+2, 20-2);
  }
  
  
  
} //corchete class
