PImage img;//variable de imagen
void setup(){//se ejecuta una vez al principio
size(800,400);// dimensión del ancho y la altura de la ventana 
img=loadImage("Palazzo_della_civiltà_del_lavoro_(EUR,_Rome)_(5904657870).jpg");//carga de la imagen en la variable:setup

}
void draw(){//se ejecuta todo el tiempo a una determinada cantidad de fotogramas(imagenes)
background(0,120,190);//color de fondo
image( img, 0, 0, 400, 400 );
//cuerpo de edificio
fill(235, 220, 180);//establece el color que se usa para rellenar las formas
stroke(235,220,180);// color de borde 
square(445,46,311);//dibuja cuadrado
fill(175);
text("VN POPOLO DI POETI DI ARTISTI DI EROI",511,63);
text("DI SANTI DI PENSATORI DI SCIENZIATI",511,73);
text("DI NAVIGATORI DI TRASMIGRATORI",511,83);  

fill(100);
noStroke();
/*ventana formada por rect y arc
fila1,columna 2 */
rect(457,100,25,30);
arc(457+12.5,100,25,15,PI,TWO_PI);
//f1,c2 
rect(490,100,25,30);
arc(490+12.5,100,25,15,PI,TWO_PI);
//f1,c3
rect(523,100,25,30);
arc(523+12.5,100,25,15,PI,TWO_PI);
//f1,c4
rect(556,100,25,30);
arc(556+12.5,100,25,15,PI,TWO_PI);
//f1,c5
rect(589,100,25,30);
arc(589+12.5,100,25,15,PI,TWO_PI);
//f1,c6
rect(622,100,25,30);
arc(622+12.5,100,25,15,PI,TWO_PI);
//f1,c7
rect(655,100,25,30);
arc(655+12.5,100,25,15,PI,TWO_PI);
//f1,c8
rect(688,100,25,30);
arc(688+12.5,100,25,15,PI,TWO_PI);
//f1,c9
rect(721,100,25,30);
arc(721+12.5,100,25,15,PI,TWO_PI);

//fila2,columna
rect(457,146,25,30);
arc(457+12.5,146,25,15,PI,TWO_PI);
//f2,c2
rect(490,146,25,30);
arc(490+12.5,146,25,15,PI,TWO_PI);
//f2,c3
rect(523,146,25,30);
arc(523+12.5,146,25,15,PI,TWO_PI);
//f2,c4
rect(556,146,25,30);
arc(556+12.5,146,25,15,PI,TWO_PI);
//f2,c5
rect(589,146,25,30);
arc(589+12.5,146,25,15,PI,TWO_PI);
//f2,c6
rect(622,146,25,30);
arc(622+12.5,146,25,15,PI,TWO_PI);
//f2,c7
rect(655,146,25,30);
arc(655+12.5,146,25,15,PI,TWO_PI);
//f2,c8
rect(688,146,25,30);
arc(688+12.5,146,25,15,PI,TWO_PI);
//fc2,c9
rect(721,146,25,30);
arc(721+12.5,146,25,15,PI,TWO_PI);

//fila 3,columna1
rect(457,192,25,30);
arc(457+12.5,192,25,15,PI,TWO_PI);
//f3,c2 
rect(490,192,25,30);
arc(490+12.5,192,25,15,PI,TWO_PI);
//f3,c3
rect(523,192,25,30);
arc(523+12.5,192,25,15,PI,TWO_PI);
//f3,c4
rect(556,192,25,30);
arc(556+12.5,192,25,15,PI,TWO_PI);
//f3,c5
rect(589,192,25,30);
arc(589+12.5,192,25,15,PI,TWO_PI);
//f3,c6
rect(622,192,25,30);
arc(622+12.5,192,25,15,PI,TWO_PI);
//f3,c7
rect(655,192,25,30);
arc(655+12.5,192,25,15,PI,TWO_PI);
//f3,c8
rect(688,192,25,30);
arc(688+12.5,192,25,15,PI,TWO_PI);
//f3,c9
rect(721,192,25,30);
arc(721+12.5,192,25,15,PI,TWO_PI);

//fila 4,columna1
rect(457,238,25,30);
arc(457+12.5,238,25,15,PI,TWO_PI);
//f4,c2 
rect(490,238,25,30);
arc(490+12.5,238,25,15,PI,TWO_PI);
//f4,c3
rect(523,238,25,30);
arc(523+12.5,238,25,15,PI,TWO_PI);
//f4,c4
rect(556,238,25,30);
arc(556+12.5,238,25,15,PI,TWO_PI);
//f4,c5
rect(589,238,25,30);
arc(589+12.5,238,25,15,PI,TWO_PI);
//f4,c6
rect(622,238,25,30);
arc(622+12.5,238,25,15,PI,TWO_PI);
//f4,c7
rect(655,238,25,30);
arc(655+12.5,238,25,15,PI,TWO_PI);
//f4,c8
rect(688,238,25,30);
arc(688+12.5,238,25,15,PI,TWO_PI);
//f4,c9
rect(721,238,25,30);
arc(721+12.5,238,25,15,PI,TWO_PI);

//fila 5 ,columna1
rect(457,284,25,30);
arc(457+12.5,284,25,15,PI,TWO_PI);
//f5,c2
rect(490,284,25,30);
arc(490+12.5,284,25,15,PI,TWO_PI);
//f5,c3
rect(523,284,25,30);
arc(523+12.5,284,25,15,PI,TWO_PI);
//f5,c4
rect(556,284,25,30);
arc(556+12.5,284,25,15,PI,TWO_PI);
//f5,c5
rect(589,284,25,30);
arc(589+12.5,284,25,15,PI,TWO_PI);
//f5,c6
rect(622,284,25,30);
arc(622+12.5,284,25,15,PI,TWO_PI);
//f5,c7
rect(655,284,25,30);
arc(655+12.5,284,25,15,PI,TWO_PI);
//f5,c8
rect(688,284,25,30);
arc(688+12.5,284,25,15,PI,TWO_PI);
//f5,c9
rect(721,284,25,30);
arc(721+12.5,284,25,15,PI,TWO_PI);

//fila 6 ,columna1
rect(457,330,25,30);
arc(457+12.5,330,25,15,PI,TWO_PI);
//f6,c2
rect(490,330,25,30);
arc(490+12.5,330,25,15,PI,TWO_PI);
//f6,c3
rect(523,330,25,30);
arc(523+12.5,330,25,15,PI,TWO_PI);
//f6,c4
rect(556,330,25,30);
arc(556+12.5,330,25,15,PI,TWO_PI);
//f6,c5
rect(589,330,25,30);
arc(589+12.5,330,25,15,PI,TWO_PI);
//f6,c6
rect(622,330,25,30);
arc(622+12.5,330,25,15,PI,TWO_PI);
//f6,c7
rect(655,330,25,30);
arc(655+12.5,330,25,15,PI,TWO_PI);
//f6,c8
rect(688,330,25,30);
arc(688+12.5,330,25,15,PI,TWO_PI);
//f6,c9
rect(721,330,25,30);
arc(721+12.5,330,25,15,PI,TWO_PI);

//piso
noStroke();//no relleno 
fill(190);
rect(400,357,799,358);//dibuja rectangulo que empieza en un punto y termina en otro (x,y,x1,y1)
println("x: "+ mouseX + "Y: "+ mouseY);//println te da las coordenadas del punto donde ubicas el mouse
}

  
