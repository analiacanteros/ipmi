float textoP3posX,textoP3posY,texto2P3posX,texto2P3posY,rectanguloposX,rectangulo2posX,diarioposX,diarioposY,piratasposX;
String textohistoria,textohistoria2;
color azultransparente;
PFont fuente1p3;
PImage imagendiario,imagenpiratas,imagen3;


void dibujarPantalla3(){
 background(0);
 //llamo a la subfunciones de la pantalla3
 
 dibujarTextoP3();
 dibujarImagenP3();
 
}

 void inicializarvariablesPantalla3(){
 textohistoria=("Drake  recupera un ataúd con el diario de su antepasado.\nAllí descubre pistas sobre la ubicación de El Dorado." );
 textoP3posX= 0;
 textoP3posY=50;  
 texto2P3posX=640;
 texto2P3posY=159;
 rectanguloposX=0;
 rectangulo2posX=640;
 azultransparente=color(23,49,128,50);// el cuarto valor es la opacidad alpha
 textohistoria2=("La celebracion dura poco: tras una emboscada pirata,\nNate y Elena deben resistir  hasta que sullivan aparece\nen su helicóptero para rescatarlos.");
 fuente1p3=loadFont("DejaVuSansCondensed-BoldOblique-17.vlw");
 imagendiario=loadImage("diario.png");
 imagenpiratas=loadImage("nate y los piratas.png");
 diarioposX=10;
 diarioposY=480;
 piratasposX=640;
}


void dibujarTextoP3(){ //primero dibujo
textFont(fuente1p3);
fill(250);
text(textohistoria,textoP3posX,textoP3posY);
fill(azultransparente);
rect(rectanguloposX,28,510,54);
fill(250);
text(textohistoria2,texto2P3posX,texto2P3posY);
fill(azultransparente);
rect(rectangulo2posX,130,500,90);

//animacion calculos
if(rectanguloposX<20){ // si la posicionX de mi rectangulo es menor a 20 el rectangulo se mueve para la izquierda
  rectanguloposX=rectanguloposX+0.3;} //velocidad
if(textoP3posX<31){
  textoP3posX=textoP3posX+0.3;}
  if (texto2P3posX>137){
    texto2P3posX=texto2P3posX - 3.0;}
    if(rectangulo2posX>120){
      rectangulo2posX=rectangulo2posX- 3.2;}
}

void dibujarImagenP3(){
 // dibujo primero
image(imagendiario,diarioposX,diarioposY,300,169);
image(imagenpiratas,piratasposX,280);
if(diarioposY>280){ //si la posiciony de la imagen es mayor que 280 se va mover para arriba
  diarioposY=diarioposY -2.0;}
  
  if (piratasposX>326){ // si la posicionX del lado dercho es  mayor a 326  la imagen se mueve para el lado izquierdo
  piratasposX= piratasposX - 3.0;}

}
