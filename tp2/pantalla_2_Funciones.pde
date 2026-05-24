
 float texto1posX,texto1posY,rectposX,rectposY,veloxtodo,personajesposX,personajesposY;
 String texto1;
 color azultransparenteP2;
 PFont fuente1;
 PImage personajes;



 void dibujarPantalla2(){
 background(0);

 // Llamamos a las sub-funciones de esta pestaña
  
 dibujarImagenP2();
 dibujarTextoP2();
  
}


 void inicializarvariablesPantalla2(){
 //textos y fuentes
 texto1=("Natahan Drake, un cazador de tesoros que afirma ser descendiente\ndel famoso explorador Sir Francis Drake. Junto a la periodista\nElena Fisher y su mentor Victor Sullivan,se embarcan en una\npeligrosa aventura para encontrar el tesoro de El Dorado.");
 fuente1=loadFont("DejaVuSansCondensed-BoldOblique-17.vlw");
 azultransparenteP2=color(23,49,128,50); // el ultimo parametro es alpha la opacidad
 
 //posiciones de textos y imagenes
 texto1posX= 31;
 texto1posY=0;
 personajesposX=10;
 personajesposY=463;
 rectposX=20;
 rectposY=0;
 veloxtodo=0.6;
 //imagenes 
 personajes=loadImage("todos.png");
 }
 
 
 //funciones void no devuelven valor 
 void dibujarImagenP2(){
  imageMode(CORNER);
 image(personajes,personajesposX,personajesposY,650,400);
println("x: "+ mouseX + "Y: "+ mouseY);
if(personajesposY>100){ // si la posicion en y es mayor a 100,le resto 2.0 Y se mueve hacia arriba
  personajesposY=personajesposY- 2.0;}
 
}

 void dibujarTextoP2(){
 noStroke();
 fill(azultransparenteP2);//  
 rect(rectposX,rectposY,599,99);// el cuerpo de el texto
 fill(250);
 textFont(fuente1);//tipografia
 text(texto1,texto1posX,texto1posY);
 
if(rectposY<28){  //si la posicion en Y de mi rectangulo es menor a 28  , se mueve hacia abajo 
  rectposY=rectposY+0.6;}
  if(texto1posY<50){  //si la posicion  en Y del texto es menor a 50 entonces se mueve hacia abajo 
  texto1posY=texto1posY+0.6;  
}

}
