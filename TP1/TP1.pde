import oscP5.*;
OscP5 osc;
GestorSenial gestorAmp;
GestorSenial gestorPitch;


boolean haySonido = false;
boolean antesHabiaSonido = false;


boolean empezoElSonido = false;
boolean terminoElSonido = false;


boolean monitor = false;

float amortiguacion = 0.9;

float minPitch = 61;
float maxPitch = 96; 

float minAmp = 60;
float maxAmp = 100; 


float amp = 0;
float pitch = 0;

float umbralTiempo = 500;
long marcaDeTiempo;

Trazos t;

Paleta paleta;

PGraphics grafico;

void setup () {
  size (400, 600);

  osc = new OscP5(this, 12345);
  
  grafico = createGraphics ( width, height );

  gestorAmp = new GestorSenial (minAmp, maxAmp, amortiguacion); //min y max de entrada q queremos evaluar
  gestorPitch = new GestorSenial (minPitch, maxPitch, amortiguacion);

  t = new Trazos();
  paleta = new Paleta ("roma1.jpg");
  paleta = new Paleta ("roma2.jpg");
  paleta = new Paleta ("roma3.jpg");
  paleta = new Paleta ("roma4.jpg");

  
}

void draw () {
  
  gestorAmp.actualizar(amp);
  gestorPitch.actualizar(pitch);

  haySonido  =  gestorAmp.filtradoNorm() > 0.1;

  empezoElSonido = !antesHabiaSonido && haySonido;
  terminoElSonido = antesHabiaSonido && !haySonido;

  /*--- aca lo que hice fue limitar el volumen y la altura (los numeros estan normalizados)*/
  boolean agudoYalto = gestorAmp.filtradoNorm() > 0.3 && gestorPitch.filtradoNorm() > 0.1;
  boolean bajoYagudo = gestorAmp.filtradoNorm() > 0.1 && gestorAmp.filtradoNorm() < 0.4 && gestorPitch.filtradoNorm() > 0.1;
  boolean altaYgrave = gestorAmp.filtradoNorm() > 0.3 && gestorPitch.filtradoNorm() < 0.1;
  boolean bajoYgrave = gestorAmp.filtradoNorm() > 0.1 && gestorAmp.filtradoNorm() < 0.3 ;

  t.estadoObra();

  if (empezoElSonido) {
    marcaDeTiempo = millis(); //cuanto tiempo desde que arranco el sonido
    println ("sonido");
  }

  /*---sonidos largos para trazos normales--- */
  
  
  if (agudoYalto) {
    //paleta.darColorPaletaUno();
    t.trazos(paleta.darColorPaletaUno(), 220, 300 );
    println ("agudo y alto");
  } 
  if (bajoYgrave) {
    grafico.beginDraw();
    t.trazoTransp(paleta.darColorPaletaDos(), 220, 300 );  
    grafico.endDraw();
    //t.trazosNormalesP2();
    println ("bajo y grave");
  }
  if (altaYgrave) {
    t.trazos(paleta.darColorPaletaTres(),220, 300);
    //t.trazosNormalesP3();
    println ("alto y grave");
  } 
  if (bajoYagudo) {
    t.trazos(paleta.darColorPaletaCuatro(),220, 300);
    //t.trazosNormalesP4();
    println ("bajo y agudo");
  } 
  



  /*---sonidos cortos para trazos largos--- */
  if (terminoElSonido) {/*&& !agudoYalto && !bajoYgrave && !altaYgrave && !bajoYagudo) {*/
    long momentoActual = millis();
    if ( momentoActual < marcaDeTiempo +  umbralTiempo) { // buscando sonidos cortos
      translate (-100, -110);
      t.trazos(paleta.darColorPaletaUno(), 100, 220 ); //le cambie el cancho y alto para simular los trazos largos así los tenemos todos dentro de una sola función("trazos")
     // println ("trazo largo");
    }
  }

  if ( monitor ) {
    //muestra la señal en pantalla
    gestorAmp.imprimir( 100, 100, 400, 200);
    gestorPitch.imprimir( 100, 350, 400, 200, false, true);
  }

  antesHabiaSonido = haySonido;
}

void  oscEvent (OscMessage m) {

  if (m.addrPattern().equals("/amp")) {
    amp = m.get(0).floatValue();
  } else if (m.addrPattern().equals("/pitch")) {
    pitch = m.get(0).floatValue();
  }
}
