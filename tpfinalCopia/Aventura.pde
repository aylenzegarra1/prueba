class Aventura {

  //atributos

  String estado;
  int cantPantallas = 26;
  Pantalla [] pantalla = new Pantalla [cantPantallas];
  Boton botonComenzar, botonCreditos, botonTrepar, botonCaminar, botonJugarJuego, botonGuardarDeTodo, botonVolver, botonLago, botonCueva;
  Creditos [] creditos = new Creditos [4]; 
  Juego juego;


  //constructor

  Aventura () {
    
    this.estado = "inicioAventura";
    this.juego = new Juego ();
    
    
    //CRÉDITOS
    this.creditos [0] = new Creditos(0, "Con Alí Babá", -300, 100, -50);
    this.creditos [1] = new Creditos(1, "Los cuarenta ladrones", -600, 50, -500);
    this.creditos [2] = new Creditos(2, "Kassim", -900, 30, -680);
    this.creditos [3] = new Creditos(3, "Y Adila", -1200, 260, -1000);

    //BOTONES    
    this.botonComenzar = new Boton ("Comenzar", 255, 275, 100, 40, 250, 250);
    this.botonCreditos = new Boton ("Créditos", 60, 275, 100, 40, 50, 250);
    this.botonTrepar = new Boton ("Trepar un árbol\npara ver mejor", 260, 268, 120, 40, 250, 250); //int posXTxtB_, int posYTxtB_, int tamRX_, int tamRY_, int posXR_, int posYR_
    this.botonJugarJuego = new Boton ("Jugar juego", 155, 275, 100, 40, 145, 250);
    this.botonGuardarDeTodo = new Boton ("Guardar de\n     todo", 45, 268, 100, 40, 30, 250);
    this.botonCaminar = new Boton ("Caminar para\n   buscarlo", 38, 268, 100, 40, 30, 250);
    this.botonVolver = new Boton  ("Volver\nal inicio", 170, 268, 100, 40, 145, 250);
    this.botonLago = new Boton ("  Buscar por\n     el lago", 38, 268, 100, 40, 30, 250);
    this.botonCueva = new Boton ("  Buscar por\n     la cueva", 265, 268, 100, 40, 260, 250);

    //HISTORIA INICIAL O INTRODUCCIÓN
    this.pantalla[0] = new Pantalla(0, "Alí Babá", "y los cuarenta ladrones");
    this.pantalla[1] = new Pantalla(1, "Hace mucho tiempo, en una ciudad persa, vivieron\ndos hermanos huérfanos muy pobres: Kassim y Alí Babá.");
    this.pantalla[2] = new Pantalla(2, "Kassim, que era ambicioso pero poco trabajador,\nse las ingenió para casarse con una joven adinerada.");
    this.pantalla[3] = new Pantalla(3, "Alí llevaba una vida menos ambiciosa trabajando como\nleñador. Gracias a su esfuerzo, logró comprarse un asno.");
    this.pantalla[4] = new Pantalla(4, "Un día mientras Alí recolectaba leña en el bosque con\nsu asno, oyó un ruido extraño. Al principio no sospechó\nnada, pero en un cerrar de ojos de repente su asno había\ndesaparecido.");

    //HISTORIA ALTERNATIVA 1

    this.pantalla[5] = new Pantalla(5, "Desde lo alto pudo ver a su asno, pero también a un\ngrupo de maleantes a caballo. Pararon justo al pie del\nárbol, pero no llegaron a verlo.");
    this.pantalla[6] = new Pantalla(6, "Los maleantes dejaron sus caballos y caminaron con\nunos sacos pesados hacia una roca. Alí los contó: eran\ncuarenta.");
    this.pantalla[7] = new Pantalla(7, "Uno de ellos gritó ¡Ábrete Sésamo! y la roca se abrió. Los\nhombres entraron, vaciaron sus sacos y salieron de allí.\nLuego gritaron ¡Sésamo Cierrate! y la roca volvió a su\nlugar.");
    this.pantalla[8] = new Pantalla(8, "Alí esperó a que se vayan, se acercó a la roca y gritó las\npalabras mágicas. Dentro de la cueva encontró ricas\nmercancías: monedas y diamantes. Enseguida se dio\ncuenta de que era todo robado, pero no pudo evitar\nquerer guardar un poco para él.");
    
    //ACÁ VA EL JUEGO 
    
    this.pantalla[9] = new Pantalla(9, "Guardar sólo monedas le dejaba la conciencia tranquila.\nLlenó algunas bolsas y cuando se las mostró a su esposa\nAdila, ella pensó que era un ladrón.");
    this.pantalla[10] = new Pantalla(10, "Él le explicó la historia y quedó fascinada. Antes de\nguardar el oro Adila quiso medirlo, así que fue a visitar a\nKassim para pedirle una balanza.");
    this.pantalla[11] = new Pantalla(11, "Kassim se la prestó, pero cuando la devolvió encontró\nuna moneda de oro pegada a ella. Intrigado, acudió a su\nhermano.");
    this.pantalla[12] = new Pantalla(12, "Alí le ofreció la mitad de su dinero, pero Kassim quería\nmás. Por miedo a que lo denuncie de ladrón, le contó el\nsecreto de la roca.");
    this.pantalla[13] = new Pantalla(13, "Cuando Kassim llegó a la cueva, llenó varios sacos. Pero\nal irse, olvidó las palabras mágicas. Oyó a los ladrones\nacercarse y se escondió, pero lo vieron y lo mataron.\nDejaron su cuerpo.");
    this.pantalla[14] = new Pantalla(14, "Alí vio que tardaba en volver así que fue a buscarlo. Lloró\nsu muerte y se llevó su cuerpo para enterrarlo.");
    this.pantalla[15] = new Pantalla(15, "Los ladrones volvieron y al no ver el cuerpo de Kassim,\nrastreó a Alí y se presentó a su casa como un vendedor\nde aceites pidiendo posada. En cada jarrón había un\nladrón escondido.");
    this.pantalla[16] = new Pantalla(16, "La esposa de Kassim fue a ver las jarras y escuchó a los\nladrones escondidos hablando entre ellos. Se dio cuenta\nque era una trampa así que fue a la cocina a hervir aceite\ny lo vertió en cada jarrón.");
    this.pantalla[17] = new Pantalla(17, "Al otro día les contó lo sucedido a Alí Babá y a Adila, y ya\ndespreocupados por los ladrones, continuaron su vida de\ngoce. Fin.");
    
    //HISTORIA ALTERNATIVA 2
    
    this.pantalla[18] = new Pantalla(18, "Buscó a su asno por el bosque, desesperado. De ese\nanimal dependía gran parte de su trabajo.");
    this.pantalla[19] = new Pantalla(19, "Se desvió hacia un lago, donde encontró a su asno\nbebiendo agua. Por las dudas volvió a su casa, no quería\ncorrer más riesgos. Fin.");   
    this.pantalla[20] = new Pantalla(20, "En la cueva se encontró con maleantes, intentó escapar\npero eran muchos. Lo asesinaron. Su familia jamás lo\nencontró. Fin.");
    
    //HISTORIA ALTERNATIVA 3
    
    this.pantalla[21] = new Pantalla(21, "Alí Babá vio una gran oportunidad en esa situación así\nque se llevó de todo. No le contaría a nadie de su fortuna,\nni siquiera a su esposa Adila.");
    this.pantalla[22] = new Pantalla(22, "Todos los días llegaba con un regalo nuevo, Adila no se\nquejaba pero empezó a sospechar. Le preguntó cómo los\nhabía conseguido y Alí ponía excusas.");
    this.pantalla[23] = new Pantalla(23, "Ella sabía que mentía, así que un día decidió seguirlo a\nescondidas. Lo vio entrar a la cueva y salir con bolsas\npesadas, sin querer se le cayó una y vio todas las riquezas\nque contenía.");
    this.pantalla[24] = new Pantalla(24, "Enojada corrió a su casa y cuando Alí llegó lo acusó de\nladrón y le pidió el divorcio. Él intentó hablar con ella pero\nfue imposible. Fin.");
   
  }





  //métodos


  //DIBUJO DE PANTALLAS

  void dibujar() {
    if (this.estado.equals ("inicioAventura")) {
      this.pantalla[0].dibujarPantallaInicio();
      this.botonComenzar.dibujarBotonesInicio();
      this.botonCreditos.dibujarBotonesInicio();
    } else if (this.estado.equals ("pantalla1")) {
      this.pantalla[1].dibujarPantallasA();
    } else if (this.estado.equals ("pantalla2")) {
      this.pantalla[2].dibujarPantallasA();
    } else if (this.estado.equals ("pantalla3")) {
      this.pantalla[3].dibujarPantallasA();
    } else if (this.estado.equals ("pantalla4")) {
      this.pantalla[4].dibujarPantallasA();
      this.botonTrepar.dibujarBotonesAventura();
      this.botonCaminar.dibujarBotonesAventura();
    } else if (this.estado.equals ("pantalla5")) {
      this.pantalla[5].dibujarPantallasA();
    } else if (this.estado.equals ("pantalla6")) {
      this.pantalla[6].dibujarPantallasA();
    } else if (this.estado.equals ("pantalla7")) {
      this.pantalla[7].dibujarPantallasA();
    } else if (this.estado.equals ("pantalla8")) {
      this.pantalla[8].dibujarPantallasA();
      this.botonJugarJuego.dibujarBotonesAventura();
                                                  //--------ACÁ IRÍA JUEGO
    }else if (this.estado.equals ("pantalla9")) {
      this.pantalla[9].dibujarPantallasA();
    }else if (this.estado.equals ("pantalla10")) {
      this.pantalla[10].dibujarPantallasA();
    }else if (this.estado.equals ("pantalla11")) {
      this.pantalla[11].dibujarPantallasA();
    }else if (this.estado.equals ("pantalla12")) {
      this.pantalla[12].dibujarPantallasA();
    }else if (this.estado.equals ("pantalla13")) {
      this.pantalla[13].dibujarPantallasA();
    }else if (this.estado.equals ("pantalla14")) {
      this.pantalla[14].dibujarPantallasA();
    }else if (this.estado.equals ("pantalla15")) {
      this.pantalla[15].dibujarPantallasA();
    }else if (this.estado.equals ("pantalla16")) {
      this.pantalla[16].dibujarPantallasA();
    }else if (this.estado.equals ("pantalla17")) {
      this.pantalla[17].dibujarPantallasA();
      this.botonVolver.dibujarBotonesAventura();
    }else if (this.estado.equals ("pantalla18")) {
      this.pantalla[18].dibujarPantallasA();
      this.botonLago.dibujarBotonesAventura();
      this.botonCueva.dibujarBotonesAventura();
    }else if (this.estado.equals ("pantalla19")) {
      this.pantalla[19].dibujarPantallasA();
      this.botonVolver.dibujarBotonesAventura();
    }else if (this.estado.equals ("pantalla20")) {
      this.pantalla[20].dibujarPantallasA();
      this.botonVolver.dibujarBotonesAventura();
    }else if (this.estado.equals ("pantalla21")) {
      this.pantalla[21].dibujarPantallasA();
    }else if (this.estado.equals ("pantalla22")) {
      this.pantalla[22].dibujarPantallasA();
    }else if (this.estado.equals ("pantalla23")) {
      this.pantalla[23].dibujarPantallasA();
    }else if (this.estado.equals ("pantalla24")) {
      this.pantalla[24].dibujarPantallasA();
      this.botonVolver.dibujarBotonesAventura();
    }
    
    if (this.estado.equals("creditos")) {      //DIBUJO CRÉDITOS  
      this.creditos[0].dibujarYAnimar();
      this.creditos[1].dibujarYAnimar();
      this.creditos[2].dibujarYAnimar();
      this.creditos[3].dibujarYAnimar();
      this.botonVolver.dibujarBotonesAventura();
    }
    
    if (this.estado.equals("juego")){      //DIBUJO JUEGO  
      this.juego.dibujar();
      this.juego.teclaPresionada();
      this.juego.mover();
    }
    
  }


  //BOTONES

  void mousePresionado () {
    if (this.estado.equals("inicioAventura") && this.botonComenzar.clickBoton()) {  //BOTONES PANTALLA INICIO
      this.estado = "pantalla1";                                                      //Comenzar aventura
    } if (this.estado.equals("inicioAventura") && this.botonCreditos.clickBoton()) {  //Ir a creditos
      this.estado = "creditos";
    }
    
    if (this.estado.equals("pantalla4")) {     //BOTONES DECISION 1
      if(this.botonTrepar.clickBoton()) {  
        this.estado = "pantalla5";
      }
      else if ( this.botonCaminar.clickBoton()){
      this.estado = "pantalla18";  
      }
    }
    
    else if (this.estado.equals("pantalla18")) {     //BOTONES DECISION 2
      if(this.botonLago.clickBoton()) {  
        this.estado = "pantalla19";
      }
      else if (this.botonCueva.clickBoton()){
      this.estado = "pantalla20";  
      }
    }
    
    if (this.estado.equals ("pantalla8") && this.botonJugarJuego.clickBoton()){  //BOTONES DECISION 3 - JUEGO      
        this.estado = "juego";     
    }
    
    
    if (this.estado.equals ("pantalla17") && this.botonVolver.clickBoton()){  //BOTONES VOLVER A INICIO
      this.estado = "inicioAventura";
    }else if (this.estado.equals ("pantalla19") && this.botonVolver.clickBoton()){  
      this.estado = "inicioAventura";
    }else if (this.estado.equals ("pantalla20") && this.botonVolver.clickBoton()){  
      this.estado = "inicioAventura";
    }else if (this.estado.equals ("pantalla24") && this.botonVolver.clickBoton()){  
      this.estado = "inicioAventura";
    } else if (this.estado.equals ("creditos") && this.botonVolver.clickBoton()){  
      this.estado = "inicioAventura";
    }   
  }



  // TECLA PRESIONADA - CAMBIO DE PANTALLA AVENTURA

  void teclaPresionada() {
    if (this.estado.equals("pantalla1") && keyCode == RIGHT) {
      this.estado = "pantalla2";
    } else if (this.estado.equals("pantalla2") && keyCode == RIGHT) {
      this.estado = "pantalla3";
    } else if (this.estado.equals("pantalla3") && keyCode == RIGHT) {
      this.estado = "pantalla4";                                      
    } else if (this.estado.equals("pantalla5") && keyCode == RIGHT) {  
      this.estado = "pantalla6";                                       
    } else if (this.estado.equals("pantalla6") && keyCode == RIGHT) {
      this.estado = "pantalla7";
    } else if (this.estado.equals("pantalla7") && keyCode == RIGHT) {
      this.estado = "pantalla8";
    } else if (this.estado.equals("pantalla9") && keyCode == RIGHT) { 
      this.estado = "pantalla10";
    }else if (this.estado.equals("pantalla10") && keyCode == RIGHT) { 
      this.estado = "pantalla11";
    }else if (this.estado.equals("pantalla11") && keyCode == RIGHT) { 
      this.estado = "pantalla12";
    }else if (this.estado.equals("pantalla12") && keyCode == RIGHT) { 
      this.estado = "pantalla13";
    }else if (this.estado.equals("pantalla13") && keyCode == RIGHT) { 
      this.estado = "pantalla14";
    }else if (this.estado.equals("pantalla14") && keyCode == RIGHT) { 
      this.estado = "pantalla15";
    }else if (this.estado.equals("pantalla15") && keyCode == RIGHT) { 
      this.estado = "pantalla16";
    }else if (this.estado.equals("pantalla16") && keyCode == RIGHT) { 
      this.estado = "pantalla17";
    }else if (this.estado.equals("pantalla21") && keyCode == RIGHT) { 
      this.estado = "pantalla22";
    }else if (this.estado.equals("pantalla22") && keyCode == RIGHT) { 
      this.estado = "pantalla23";
    }else if (this.estado.equals("pantalla23") && keyCode == RIGHT) { 
      this.estado = "pantalla24";
    }
  }
  
  
} //class corchete
