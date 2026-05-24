 float rectangulop4posY,textohistoriaposY,opacidadTextoenemigo,romanposY,navarroposY,eddyposY;
 String textoP4historia,textoRoman,textoNavarro,textoEddy;
 PFont fuente1P4,fuente2P4;
 PImage imagenRoman,imagenNavarro,imagenEddy;
 color  azultransparenteP4;
 
 
   
   
   
void dibujarPantalla4(){
 background (0);
// llamo a la subfunciones
 dibujarImagenP4();
 dibujarTextoP4();



}

void inicializarvariablesPantalla4(){
textoP4historia=("A salvo tras la huida, el diario los guía a ruinas amazónicas ,donde un\nsubmarino nazi revela la ubicación de una isla perdida en el pacífico.\nDonde se enfrentan a:");
fuente1P4=loadFont("DejaVuSansCondensed-BoldOblique-17.vlw");
imagenRoman=loadImage("Gabriel Roman .jpg");
imagenNavarro=loadImage("Navarroz.png");
imagenEddy=loadImage("Eddy.png");
fuente2P4=loadFont("DejaVuSansCondensed-BoldOblique-13.vlw");
textoRoman=("Gabriel Roman:\nPrincipal enemigo de drake,\ncoleccionista de tesoros.");
textoNavarro=("Atoq Navarro:\nLider mercenario,arqueólogo\ny socio de Roman.");
textoEddy=("Eddy Raja:\nLider de una banda de piratas\nbajo el servicio de Roman.");
azultransparenteP4=color(23,49,128,50);
rectangulop4posY=0;
textohistoriaposY=0;
opacidadTextoenemigo=0;
romanposY=480;
navarroposY=480;
eddyposY=480;
}


void dibujarTextoP4(){
 //dibujoprimero
fill(250);
textFont(fuente1P4);
text(textoP4historia,20,textohistoriaposY);
fill(azultransparenteP4);
rect(14,rectangulop4posY,610,80);
//animacion calculos
if(rectangulop4posY<20){
  rectangulop4posY=rectangulop4posY+0.3;}
    if(textohistoriaposY<47){
      textohistoriaposY=textohistoriaposY+0.8;}
      
//textos enemigos
fill(212,175,55,opacidadTextoenemigo);// el cuarto parametro es la variable que cree para la opacidad 
textFont(fuente2P4);
text(textoRoman,223,150);
text(textoNavarro,17,150);
text(textoEddy,432,150);
//animacioncalculos
if(opacidadTextoenemigo<300){ // si el valor de mi variable es menor a 300 se va a incrementar 1.5 la opacidad
  opacidadTextoenemigo=opacidadTextoenemigo+1.5;
}


}
void dibujarImagenP4(){

image(imagenRoman,220,romanposY);
image(imagenNavarro,15,navarroposY);
image(imagenEddy,431,eddyposY);
//animacionescalculos

if(romanposY>220){
  romanposY=romanposY-2.7;}
  if(navarroposY>220){
    navarroposY=navarroposY-2.7;}
    if (eddyposY>220){
      eddyposY=eddyposY-2.7;}


}
