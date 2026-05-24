float opacidadTextofinal,doradoposX,imagenFinalposX,rectFinalposX,rectFinalposY,rectFinalTamañoX,rectFinalTamañoY;
String textofinal,textoReinicio;
PFont  fuenteP5,fuenteP52;
PImage imagenDorado,imagenFinal;

void dibujarPantalla5(){
 //llamo a mis subfunciones
background(0);
dibujarTextoP5();
dibujarImagenP5();
dibujarBotonReinicio();

}



void inicializarvariablesPantalla5(){
textofinal=("Nate descubre que El Dorado es una estatua maldita que convierte a\nlas personas en monstruos.\nTras derrotar a los villanos,logran escapar de la isla.");
imagenDorado=loadImage("eldorado.jpeg");
imagenFinal=loadImage("DrakeFinal.png");
fuenteP5=loadFont("DejaVuSansCondensed-BoldOblique-17.vlw");
textoReinicio=("REINICIAR");
fuenteP52=loadFont("Rubik-Bold-30.vlw");
opacidadTextofinal=0;
doradoposX=0;
imagenFinalposX=640;
rectFinalposX=230;
rectFinalposY=390;
rectFinalTamañoX=198;
rectFinalTamañoY=45;
}
void dibujarTextoP5(){
fill( 212,175,55,opacidadTextofinal);
textFont(fuenteP5);
text(textofinal,23,40);
//animacioncalculos
if(opacidadTextofinal<300){
  opacidadTextofinal=opacidadTextofinal+1.5;}

}

void dibujarImagenP5(){
image(imagenDorado,doradoposX,150);
image(imagenFinal,imagenFinalposX,150);
//animacion calculos
if(doradoposX<20){
  doradoposX=doradoposX+0.5;}
  if (imagenFinalposX>300){
    imagenFinalposX=imagenFinalposX-3.0;}

}


void dibujarBotonReinicio(){

 strokeWeight(3);// sin grosor
 stroke(gris);
 noFill();
 rect(rectFinalposX,rectFinalposY,rectFinalTamañoX,rectFinalTamañoY);
 
 fill(250);
 textFont(fuenteP52);
 text(textoReinicio,248,424);


}
