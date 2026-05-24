//variables para pasar las pantallas
int estado,tiempoinicio,duracionPantalla;

 void setup(){
 size(640,480);
 estado=0;//controla la  pantalla actual
 tiempoinicio=0;//guarda como empezo a verse la pantalla
 duracionPantalla=10000; //tiempo en millisegundos (10segundos)
 
 //le doy inicio a las variables de mis pantallas
 inicializarvariablesPantalla1();
 inicializarvariablesPantalla2();
 inicializarvariablesPantalla3();
 inicializarvariablesPantalla4();
 inicializarvariablesPantalla5();

}


 void draw(){ //aca paso mis pantallas llamando a las funciones que cree 
if(estado==0){
  dibujarPantalla1();
}else if(estado==1){
  dibujarPantalla2();
  if (millis()-tiempoinicio>10000){
    estado=2;
    tiempoinicio=millis();}
}else if(estado==2){
  dibujarPantalla3();
  //cambio automático
  if (millis()-tiempoinicio>10000){
    estado=3;
    tiempoinicio= millis();}
}else if(estado==3){
  dibujarPantalla4();
  //cambio automático
  if (millis()-tiempoinicio>10000){
    estado=4;
    tiempoinicio= millis();}
}else if(estado==4){
  dibujarPantalla5();}
 
}
void mousePressed(){ //boton inicio en el evento de si aprieto el mousse
if(mouseX>rectp1posX && mouseX < rectp1posX + rectTamañoX && mouseY >rectp1posY && mouseY < rectp1posY + rectTamañoY){ 
if (estado==0){
  estado=1;
   tiempoinicio = millis();
    }
  }
  
  
  //boton reinicio separado del primero , 
  if(mouseX > rectFinalposX && mouseX < rectFinalposX + rectFinalTamañoX && mouseY > rectFinalposY && mouseY < rectFinalposY + rectFinalTamañoY){ 
    if (estado == 4){
      estado = 0;
      
      
      inicializarvariablesPantalla1(); // llamo a la funcion de mis variables para que se reinicien 
      inicializarvariablesPantalla2();
      inicializarvariablesPantalla3();
      inicializarvariablesPantalla4();
      inicializarvariablesPantalla5();  
      
      
    }
  }
  
  
  
}
