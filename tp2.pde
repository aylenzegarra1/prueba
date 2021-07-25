PFont fuente; // font matura

PImage imagen1, imagen2, imagen3, imagen4, imagen5; // imagenes

float aa; // animacion de imagenes
float ab;
float ac;
float ad;
float ae;

float py,py2,py3,py4,py5,py6,py7; //animacion textos

int equis = 355; //posicion rect
int ey = 265; 

  boolean cond1 = mouseX < 30;
  boolean cond2 = mouseY > 30;
  boolean cond3 = mouseY < 60;

void setup (){
  
  size (400,300);
  
  fuente = loadFont ("MaturaMTScriptCapitals-48.vlw");
  textFont(fuente);
  
  imagen1 = loadImage ("imagen1.jpg");
  imagen2 = loadImage ("imagen2.jpg");
  imagen3 = loadImage ("imagen3.jpg");
  imagen4 = loadImage ("imagen4.jpg");
  imagen5 = loadImage ("imagen5.jpg");
  
  aa = -350.0; 
  ab = -650.0;
  ac = -950.0;
  ad = -1250.0;
  ae = -1550.0;
  
  py = -200;
  py2 = -160;
  py3 = -400;
  py4 = -700;
  py5 = -1200;
  py6 = -1500;
  py7 = -1900;
  
  
}

void draw (){
  
  background (0);
  //rectMode (CENTER);
  
  //!!!!!!!!!!!!!IMAGENES!!!!!!!!!!!!!
  image (imagen1,0,aa);
  image (imagen2,0,ab);
  image (imagen3,0,ac);
  image (imagen4,0,ad);
  image (imagen5,0,ae);

  ab++;
  aa++;
  ac++;
  ad++;
  ae++;
  
  
  // !!!!!!!TEXTOS!!!!!!!!!!
  fill (255,205,0);
  textAlign (CENTER);
  textSize (45);
  text ("Alí Baba",180,py);
  textSize(30);
  textAlign(CENTER);
  text ("y los cuarenta ladrones",200,py2);
  text ("Con Alí Baba",180,py3);
  text ("Los cuarenta ladrones",200,py4);
  text ("El líder de los ladrones", 210,py5);
  text ("La esposa de Alí Baba",200,py6);
 
  py++;
  py2++;
  py3++;
  py4++;
  py5++;
  py6++;
  py7++;
  
  //!!!!CIRCULOS RANDOM!!!!
  
  float randomX = random(0,400);
  float randomY = random(0,300);
  float randomY2 = random(0,300);
  
  fill (255,205,0);
  noStroke();
  ellipse (randomX,5,5,5);
  ellipse (5,randomY,5,5);
  ellipse (395,randomY2,5,5);
  
  // !!!!!!!!!!!BOTON RESET!!!!!!!!!!!!!
  
  fill (255,0,0);
  rect (equis,ey,30,30);
  fill(0);
  textAlign(CENTER);
  textSize(20);
  text ("R",370,285);

  fill (255);
  text ("Cond1: " + cond1, 100, 200); 
  text ("Cond2: " + cond2, 100, 250); 
  text ("Cond3: " + cond3, 100, 300); 

}

  //!!!!CLICK DEL BOTON!!!!!!
  
 void mouseClicked(){
   
  if (cond1 && cond2 && cond3){
  aa = -350.0; 
  ab = -650.0;
  ac = -950.0;
  ad = -1250.0;
  ae = -1550.0;
  
  py = -200;
  py2 = -160;
  py3 = -400;
  py4 = -700;
  py5 = -1200;
  py6 = -1500;
  py7 = -1900;
  }
 }
