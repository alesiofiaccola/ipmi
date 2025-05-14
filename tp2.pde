int primerTexto= 1000;
int segundoTexto= 1000;
int tercerTexto= 1000;
int time;
int posX, posY, widthBot, heigthBot;

PImage img1;
PImage img2;
PImage img3;
void setup(){
  size(640, 480);
  img1= loadImage("looneytunes.jpg");
  img2= loadImage("looneycreators.jpg");
  img3= loadImage("looneycurrent.jpg");
  posX= 570;
  posY= 450;
  widthBot=50;
  heigthBot=35;
  println(frameCount);
}

void draw(){
  background(255);
  rect(posX, posY, widthBot, heigthBot);
    
  if(frameCount % 60==0) {
    time++;
  }
  if(time<=9){
    image(img1, 90, 0);
    primerTexto = frameCount;
    println(primerTexto);
    fill(0, 0, 0);
  } else if(time<=18){
    image(img2, 90, 0);
    segundoTexto = frameCount/2;
    println(segundoTexto);
  } else if(time<=41){
      image(img3, 0, 0);
      tercerTexto= frameCount/4;
      println(tercerTexto);
  } else {
    }
    
    textSize(30);
    text("looney tunes fue una comedia animada \n basada en las situaciones de los\n personajes ya sea con humor slapstick \n explosiones  o persecuciones", 110, 480-primerTexto);
    text("los que influenciaron esta serie\n y la mantuvieron viva fueron bob clampett\n bob givens y chuck jones", 110, 480- segundoTexto);
    text("esta franquicia logró entretener a\n millones de personas y tambien logró\n mantenerse en pie con series\n peliculas y videojuegos", 110, 480- tercerTexto);
    text(time, 50, 50);
    text("reiniciar >", 445, 475);
  
}

void mousePressed(){
    if(mouseX>posX && mouseX<posX+widthBot && mouseY>posY && mouseY<posY+heigthBot){
      frameCount=0;
      time=0;
    }
}
