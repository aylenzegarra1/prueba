class Boton {
  
  //atributos
  PFont fontB1, fontB2;
  String textoB1;
  int posXTxtB, posYTxtB, tamRX, tamRY, posXR, posYR;

  
  
  
  
  //constructores
  
  Boton (String textoB1_,int posXTxtB_, int posYTxtB_, int tamRX_, int tamRY_, int posXR_, int posYR_){
    
    this.fontB1 = loadFont ("MaturaMTScriptCapitals-48.vlw");
    this.fontB2 = loadFont ("Candara-48.vlw");
    
    this.textoB1 = textoB1_;
    this.posXTxtB = posXTxtB_;
    this.posYTxtB = posYTxtB_;
    this.tamRX = tamRX_;
    this.tamRY = tamRY_;
    this.posXR = posXR_;
    this.posYR = posYR_;    
  }
  
  
  
  
  //métodos
  
  void dibujarBotonesInicio (){
    fill (#FFFFFF);
    rect (this.posXR, this.posYR, this.tamRX, this.tamRY);
    fill (#FFA717);
    textFont(this.fontB1);
    textSize(20);
    text (this.textoB1, this.posXTxtB,this.posYTxtB);    
  }
  
  
  void dibujarBotonesAventura(){
    fill (#FFFFFF);
    rect (this.posXR, this.posYR, this.tamRX, this.tamRY);
    fill (#000000);
    textFont(this.fontB2);
    textSize(16);
    text (this.textoB1, this.posXTxtB,this.posYTxtB);   
  }
  
  
 boolean clickBoton(){
    if(mouseX>this.posXR && mouseX<this.posXR+this.tamRX && mouseY>this.posYR && mouseY<this.posYR + this.tamRY){
      return true;
    }else{
      return false;
    }
  }
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
}
