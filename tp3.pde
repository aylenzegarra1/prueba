int y1,y2; //variables de y de las lineas
int ancho, alto; //variables de tamaño de la primer linea de rects
int y_1; //varible de y de la primer linea de rects
int y_2; //varible de y de la segunda linea de rects
int x; //varible de x de la segunda linea de rects

void setup (){
 size (400,300);
 y1=0;
 y2=300;
 ancho = 10;
 alto = 10;
 y_1 = 270;
 y_2 = 240;
 x=40;
}

void draw (){
 background (255);
 
 //ROTACION
 rotate (radians(5));
 
//CICLO FOR!!! :')

//lineas

 for (int a = 0; a < 10; a++){
    strokeWeight (15);
    line (a * 50,y1, a*50,y2);
 }
 
 // primera línea de rects
 
 for (int b = 0; b < 10; b++){
 fill(0);
 rect (b * 50,y_1,ancho,alto);
 }
 
 for (int c = 0; c < 10; c++){
 fill(0);
 rect (c * 50,y_1 -50,ancho,alto);
 }
 
 for (int d = 0; d < 10; d++){
 fill(0);
 rect (d * 50,y_1 -100,ancho,alto);
 }
 
  for (int e = 0; e < 10; e++){
 fill(0);
 rect (e * 50,y_1 -150,ancho,alto);
  }
 
 for (int f = 0; f < 10; f++){
   fill(0);
   rect (f * 50,y_1 -200,ancho,alto);
 }
 
  for (int g = 0; g < 10; g++){
   fill(0);
   rect (g * 50,y_1 -250,ancho,alto);
 }
 
 // segunda línea de rects
 for (int h = 0; h < 10; h++){
 fill(0);
 rect (x,h * 50,ancho,alto);
 }
 
 for (int i = 0; i < 10; i++){
 fill(0);
 rect (x + 50,i * 50,ancho,alto);
 }
 
 for (int j = 0; j < 10; j++){
 fill(0);
 rect (x + 100,j * 50,ancho,alto);
 }
 
 for (int k = 0; k < 10; k++){
 fill(0);
 rect (x + 150,k * 50,ancho,alto);
 }
 
 for (int l = 0; l < 10; l++){
 fill(0);
 rect (x + 200,l * 50,ancho,alto);
 }
 
 for (int m = 0; m < 10; m++){
 fill(0);
 rect (x + 250,m * 50,ancho,alto);
 }
 
 for (int n = 0; n < 10; n++){
 fill(0);
 rect (x + 300,n * 50,ancho,alto);
 }
 
 for (int o = 0; o < 10; o++){
 fill(0);
 rect (x + 350,o * 50,ancho,alto);
 }
}

//MODIFICACIÓN DE VARIABLES (eventos) :')
void mouseMoved (){
  y_1 = round (map (mouseY,0,height,0,height));
  x = round (map (mouseX,0, width,0,width));
}

//CONDICIONALES Y REINICIO DE VARIABLES Y_1 y X :')
void keyPressed (){  
  if (keyCode == RIGHT){
  y_1 = 270;
} else if (keyCode == LEFT){
 x = 40; 
}
}
