int primerTexto= 1000;
int segundoTexto= 1000;
int tercerTexto= 1000;
int time;
int posX, posY, widthBot, heigthBot;

PFont font;
PImage img1;
PImage img2;
PImage img3;
void setup(){
  size(640, 480);
  font = loadFont("NirmalaText-24.vlw");
  textFont(font, 24);
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
 
    
  if(frameCount % 60 == 0) {
    time++;
  }
  if(time<=9){//primera imagen mostrada desde el segundo 0 hasta el segundo 9
    image(img1, 90, 0, 480, 480);
    tint(255, 255, 255, 170);
    primerTexto = frameCount;
    println(primerTexto);
    fill(0, 0, 0);
    text(time, 50, 50);
  } else if(time<=19){//segunda imagen mostrada desde el segundo 10 hasta el segundo 19
    image(img2, 0, 0, 640, 480);
    tint(255, 255, 255, 170);
    segundoTexto = frameCount/2;
    println(segundoTexto);
    text(time, 50, 50);
  } else if(time<=41){ //tercera pantalla mostradadesde el segundo 20 hasta el segundo 41
      image(img3, 0, 0, 640, 480);
      tint(255, 255, 255, 170);
      tercerTexto= frameCount/4;
      println(tercerTexto);
      text(time, 50, 50);
  } else if(time > 41){ //muestra de boton de reinicio
      rect(posX, posY, widthBot, heigthBot*2);
      text("gracias por su atención", 200, 170);
      text("reiniciar >", 440, 475);
      text(time, 50, 50);
  }
    
    textSize(30);
    text("looney tunes fue una comedia animada \n basada en las situaciones y aventuras \n de los personajes ya sea con  humor \n slapstick  explosiones o persecuciones", 100, 480-primerTexto);
    text("los que influenciaron esta serie\n y la mantuvieron viva fueron bob\n clampett bob givens y chuck jones", 110, 495- segundoTexto);
    text("esta franquicia logró entretener a\n millones de personas y tambien logró\n mantenerse en pie con series\n peliculas y videojuegos", 110, 480- tercerTexto);
  
}

void mousePressed(){
    if(mouseX>posX && mouseX<posX+widthBot && mouseY>posY && mouseY<posY+heigthBot){
      frameCount=0;
      time=0; //vuelve a iniciar la presentación
    }
}
