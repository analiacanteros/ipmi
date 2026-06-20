// video:https://youtu.be/Ou8IQ8jJcCM

//variables
PImage img39;
float anguloActual, nivelRosa;

void setup() {
  size(800, 400);
  img39=loadImage("39.jpg");
  noStroke();
  rectMode(CENTER);
  ellipseMode(CENTER);
  anguloActual=0;
  nivelRosa=0;
}

void draw() {
  background(0);
  image(img39, 0, 0, 400, 400);//imagen original en el lado izquierdo
  pushMatrix();
  translate(600, 200);//son las coordenadas X e Y del nuevo centro del dibujo del lado derecho.
  dibujarFormas(400, 9, anguloActual, nivelRosa);//funcion con parametros
  popMatrix();
}

void mouseMoved() {//evento de mouse : cuando el mouse se mueve
  //calculo la rotacion actual usando la funcion que calcula la distancia
  anguloActual = calcularFactorMouse(600, 200);

  if (mouseX > 400) {
    // Si  el mouse esta en el lado derecho  cambia el color  a niveles de rosa
    nivelRosa = map(mouseY, 0, height, 0, 10);
  } else {
    // Si  el mouse esta en el lado izquierdo no pasa nada
    nivelRosa = 0;
  }
}


// FUNCION QUE RETORNA VALOR
float calcularFactorMouse(float centroX, float centroY) {
  float distancia = dist(mouseX, mouseY, centroX, centroY); //
  float angulo;

  if (distancia < 200) {
    angulo = map(distancia, 0, 400, 600, TWO_PI);
  } else {
    angulo = 0; // Si está lejos, el ángulo es 0
  }

  return angulo;
}
// evento de teclado, si aprieto el teclado
void keyPressed() {
  // Si se presiona la barra espaciadora el programa se reinicia
  if (key == ' ') {
    reiniciar();
  }
}
//funcion sin parametros ni retorno para que se reinicie mi programa.
void reiniciar() {
  anguloActual = 0;
  nivelRosa = 0;
}
