 //Declaro mis variables 
 int posXtitulo,posYtitulo;
 float veloxLogo,tamañologo,rectp1posX,rectp1posY,rectTamañoX,rectTamañoY;
 String textoportada1,textoportada2,textoboton;  
 PFont fuenteP1,fuente2P1,fuente3P1;
 PImage logoP1;
 color crema,gris,verde;



 void dibujarPantalla1(){
  
   background(0);
   
  // Llamamos a las sub-funciones de esta pestaña asi no tengo todo junto
  dibujarImagenP1();
  dibujarTextoP1();
  dibujarBotonP1();
}

  
 void inicializarvariablesPantalla1(){ //le doy inicio a mis variables
 logoP1=loadImage("logo.png"); 
 tamañologo=300;
 veloxLogo=1.0;
 fuenteP1=loadFont("Rubik-Bold-60.vlw");
 textoportada1="UNCHARTED";
 posXtitulo=140;
 posYtitulo=300;
 fuente2P1=loadFont("MVBoli-20.vlw");
 textoportada2=("DRAKE'S FORTUNE");
 crema=color(240, 230, 150);
 gris=color(100,95,95);
 verde=color(21,147,110);
 fuente3P1=loadFont("Rubik-Bold-30.vlw");
 textoboton=("INICIO");
 rectp1posX=230;
 rectp1posY=390;
 rectTamañoX=198;
 rectTamañoY=45;
 

}
  //imagen
 void dibujarImagenP1(){ 
   //lo dibujo primero
   imageMode(CENTER);//le puse en el centro
 image(logoP1,340,168,tamañologo,tamañologo);//imagen
 //animacion calculos
   tamañologo=tamañologo-veloxLogo;
   if(tamañologo<250){
     tamañologo=300;
 }

}



  //texto
 void dibujarTextoP1(){
 fill(250);//relleno color
 textFont(fuenteP1);//tipografia
 text(textoportada1,posXtitulo,posYtitulo); //titulo
 // mini cartel
 noStroke();// sin grosor
 fill(crema);//relleno color
 rect(230,308,200,29);
 fill(0);
 textFont(fuente2P1);
 text(textoportada2,237,329);//subtitulo
 stroke(crema);
 line(175, 321, 222,321);
 line(438,321,485,321);
 println("x: "+ mouseX + "Y: "+ mouseY);
 
}

 //Boton de inicio
 void dibujarBotonP1(){
 strokeWeight(3);// sin grosor
 stroke(gris);
 noFill();
 rect(rectp1posX,rectp1posY,rectTamañoX,rectTamañoY);// 
 
 fill(250);
 textFont(fuente3P1);
 text(textoboton,283,426);
 

}
