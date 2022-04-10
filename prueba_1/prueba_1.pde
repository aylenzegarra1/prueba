PImage trazos;
int cantidad = 21;
Paleta paleta;

void setup () {
  size (400, 600);

  paleta = new Paleta ("osowo1.jpg");

  for (int i = 0; i < cantidad; i++) {
    String nombre = "0" + i + ".png";
    trazos = loadImage ( nombre );
    trazos.filter ( INVERT );
  }
}

void draw () {
  
  tint (paleta.darColor());
  image (trazos, random (width), random (height));
}
