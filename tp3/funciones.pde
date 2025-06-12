void quads(){
int posX= 400;
int posX2= 500;
int posY= 0;
int posY2= 0;
int cant=9;
int tam= 100;
float colourV=0;
println(mouseX + "/" + mouseY); //reconoce donde esta ubicado el mouse

  if(colourVibrant){
    colourV = int(map(sin(frameCount),-1, 1, 0, 255));  
  }else{
    colourV=0;
  }
  
  if(mirror){
    colourV= 255;
  }
  
   if(random){
    colourV = random(20, 50);
  }
  if(rotation){ 
    rotate(radians(frameCount*2));
    dist(380, -20, 440, 880);// distancia entre los extremos de la alfombra
    fill(200);
    rect(380, -20, 440, 440 );
  }
  
 for(int i = 0; i<= cant; i++){ //primer ciclo for
   if(i%2==0){
    fill(255 - colourV,255 - colourV,255 - colourV);
   }else{
     fill(colourV, colourV, colourV);
   }
   
   
   rect(posX + i*10, posY2 + i%2+100, tam - i*10, tam- i*10);
   rect(posX2 + i%2, posY + i*10, tam - i*10, tam- i*10);
   rect(posX + i*10 + 200, posY2 + i%2+100, tam - i*10, tam- i*10);
   rect(posX2 + i%2+200, posY + i*10, tam - i*10, tam- i*10);
   rect(posX + i*10, posY2 + i%2 + 300, tam - i*10, tam- i*10);
   rect(posX2 + i%2, posY + i*10+200, tam - i*10, tam- i*10);
   rect(posX + i*10 + 200, posY2 + i%2 + 300, tam - i*10, tam- i*10);
   rect(posX + i%2 + 300, posY + i*10 + 200, tam - i*10, tam- i*10);
   
   
   if(chromatic){ 
    fill(255, 0, 0);
    rect(posX + i*10, posY2 + i%2+100, tam - i*10, tam- i*10);
    rect(posX + i*10 + 200, posY2 + i%2+100, tam - i*10, tam- i*10);
    
    fill(255, 125, 0);
    rect(posX + i*10 + 200, posY2 + i%2 + 300, tam - i*10, tam- i*10);
    rect(posX + i*10, posY2 + i%2 + 300, tam - i*10, tam- i*10);
    
    fill(255, 255, 0);
    rect(posX2 + i%2, posY + i*10+200, tam - i*10, tam- i*10);
    rect(posX + i%2 + 300, posY + i*10 + 200, tam - i*10, tam- i*10);
    
    fill(0, 255, 0);
    rect(posX2 + i%2, posY + i*10, tam - i*10, tam- i*10);
    rect(posX2 + i%2+200, posY + i*10, tam - i*10, tam- i*10);
    
  }

 }
  for(int j = 0; j<= cant; j++){ //segundo ciclo for
   if(j%2==0){
       fill(colourV, colourV, colourV);
   }else{
     fill(255 - colourV,255 - colourV,255 - colourV);
   }

   rect(posX + j*10, posY + j*10, tam - j*10, tam- j*10);
   rect(posX2 + j%2, posY2+ j%2 + 100, tam - j*10, tam- j*10);
   rect(posX2 + j*10+100, posY2+ j*10, tam - j*10, tam- j*10);
   rect(posX2 + j%2+200, posY2+ j%2+100, tam - j*10, tam- j*10);
   rect(posX2 + j*10+100, posY2+ j*10+200, tam - j*10, tam- j*10);
   rect(posX2 + j%2+200, posY2+ j%2+300, tam - j*10, tam- j*10);
   rect(posX + j*10, posY + j*10 + 200, tam - j*10, tam- j*10);
   rect(posX2 + j%2, posY2+ j%2 + 300, tam - j*10, tam- j*10);
   
   if(blues){
     fill(0, 255, 255);
     rect(posX + j*10, posY + j*10, tam - j*10, tam- j*10);
     rect(posX2 + j%2, posY2+ j%2 + 100, tam - j*10, tam- j*10);
     rect(posX2 + j*10+100, posY2+ j*10, tam - j*10, tam- j*10);
     rect(posX2 + j%2+200, posY2+ j%2+100, tam - j*10, tam- j*10);
     
     fill(0, 90, 255);
     rect(posX2 + j*10+100, posY2+ j*10+200, tam - j*10, tam- j*10);
     rect(posX2 + j%2+200, posY2+ j%2+300, tam - j*10, tam- j*10);
     rect(posX + j*10, posY + j*10 + 200, tam - j*10, tam- j*10);
     rect(posX2 + j%2, posY2+ j%2 + 300, tam - j*10, tam- j*10);
     
   }
 }

}

void reiniciar(){
  rotation = false;
  colourVibrant = false;
  mirror = false;
  chromatic = false;
  blues= false;
  random = false;
}
