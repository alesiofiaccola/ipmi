// https://youtu.be/XhhL5DLYZP8

// https://www.youtube.com/watch?v=mF74MtRdWhI

//alesio fiaccola
//comision 1
PImage miimagen;
boolean rotation = false; //r
boolean colourVibrant= false; //c
boolean mirror= false; //y
boolean chromatic= false; //g
boolean blues=false; //b
boolean random= false; //o

void setup(){
  size(800, 400);
  miimagen= loadImage("22.jpg");
  noStroke();
}

void draw(){
  background(255);
  push();
  translate(-400, 0); //traslado imagen de referencia hacia el ubicacion deseada
  image(miimagen, 400, 0);
  pop();
  
     if(key =='r'){
       rotation = true;//la recreacion rota alrededor de la obra de referencia en una alfombra gris
     }else if(key == 'c'){
       colourVibrant = true; //cambia entre blanco, gris y negro continuamente
     }else if(key == 'y'){
       mirror = true; //invierte los colores blanco y negro
     }else if(key =='g'){
       chromatic = true; // cubre los cuadrados de primer for con rojo, naranja, amarillo y verde
     }else if(key == 'b'){
       blues = true; // cubre los cuadrados de segundo for en cian y azul
     }else if(key == 'o'){
      random = true; //capa de color superpuesta en la recreacion
     }else if (key == 's'){
       reiniciar(); //la recreacion de la obra vuelve a su estado original
     }
  
  //quads(X1, Y1, X2, Y2, X3, Y3, X4, Y4, cant, tam, colourV)
  quads(400, 0, 500, 100, 600, 200, 700, 300, 9, 100, 0);
  reiniciar();
}
