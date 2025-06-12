// https://youtu.be/XhhL5DLYZP8

//alesio fiaccola
//comision 1
PImage miimagen;
boolean rotation = false;
boolean colourVibrant= false;
boolean mirror= false;
boolean chromatic= false;
boolean blues=false;
boolean random= false;

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
  
  quads();
  reiniciar();
}
