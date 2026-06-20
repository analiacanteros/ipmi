void dibujarFormas( float tamañoInicial, int niveles, float angulo, float nivelRosa) { //funcion con parametros

  // Guardo el tamaño inicial en una variable que ira achicandose en cada nivel
  float tamañoActual = tamañoInicial;

  // Colores en rgb para las ellipses que van cambiando de gris a rosa segun el nivelRosa
  float rElipseIni = map(nivelRosa, 0, 10, 255, 255);
  float gElipseIni = map(nivelRosa, 0, 10, 255, 230);
  float bElipseIni = map(nivelRosa, 0, 10, 255, 240);

  float rElipseFin = map(nivelRosa, 0, 10, 35, 210); //
  float gElipseFin = map(nivelRosa, 0, 10, 35, 10);
  float bElipseFin = map(nivelRosa, 0, 10, 35, 120);

  // Colores para los Cuadrados que van cambiando de oscuro a claro segun el nivelRosa
  float rCuadradoIni = map(nivelRosa, 0, 10, 15, 90);
  float gCuadradoIni = map(nivelRosa, 0, 10, 15, 20);
  float bCuadradoIni = map(nivelRosa, 0, 10, 15, 50);

  float rCuadradoFin = map(nivelRosa, 0, 10, 240, 255);
  float gCuadradoFin = map(nivelRosa, 0, 10, 240, 200);
  float bCuadradoFin = map(nivelRosa, 0, 10, 240, 220);



  color elipseInicio   = color(rElipseIni, gElipseIni, bElipseIni);
  color elipseFin      = color(rElipseFin, gElipseFin, bElipseFin);

  color cuadradoInicio = color(rCuadradoIni, gCuadradoIni, bCuadradoIni);
  color cuadradoFin    = color(rCuadradoFin, gCuadradoFin, bCuadradoFin);

  //ciclo for
  for (int nivel = 0; nivel < niveles; nivel++) { // repite el ciclo hasta el nivel maximo (9)
    for (int cantidad = 0; cantidad < 2; cantidad++) { //dibuja un cuadrado y una ellipse por ciclo

      float porcentaje = map(nivel, 0, niveles - 1, 0, 1); // uso map para la escala de los tamaños

      if (cantidad == 0) {// ellipse

        if (nivel != 5) {// no dibuja la ellipse en el nivel 5
          color colorElipse = lerpColor(elipseInicio, elipseFin, porcentaje);//uso lerp para la escala de grises en los colores
          fill(colorElipse);
          ellipse(0, 0, tamañoActual, tamañoActual);
        }
      } else { //cuadrado
        tamañoActual = map(tamañoActual, 0, tamañoActual, 0, tamañoActual * 0.707106);// uso map para la escala de los tamaños
        pushMatrix();
        rotate(angulo * (nivel +1)*0.1);// Rota el cuadrado y cada nivel que pasa gira un poco mas
        if (nivel == 4) {//cambia el color en el nivel cuatro
          fill(120);
        } else { //si no es el nivel 4 el color sigue variando con lerpcolor
          color colorCuadrado = lerpColor(cuadradoInicio, cuadradoFin, porcentaje);
          fill(colorCuadrado);
        }

        rect(0, 0, tamañoActual, tamañoActual);
        popMatrix();
      }
    }
  }
}
