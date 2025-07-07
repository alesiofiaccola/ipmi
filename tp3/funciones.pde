void quads(int X1, int Y1, int X2, int Y2, int X3, int Y3, int X4, int Y4, int cant, int tam, float colourV){
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
  
 for(int i = 0; i<= cant; i++){ //ciclo for
   if(i%2==0){
    fill(255 - colourV,255 - colourV,255 - colourV);
   }else{
     fill(colourV, colourV, colourV);
   }
   
   
   rect(X1 + i*10, Y2 + i%2,  tam - i*10, tam - i*10);
   rect(X2 + i%2,  Y1 + i*10, tam - i*10, tam - i*10);
   rect(X3 + i*10, Y2 + i%2,  tam - i*10, tam - i*10);
   rect(X4 + i%2,  Y1 + i*10, tam - i*10, tam - i*10);
   rect(X1 + i*10, Y4 + i%2,  tam - i*10, tam - i*10);
   rect(X2 + i%2,  Y3 + i*10, tam - i*10, tam - i*10);
   rect(X3 + i*10, Y4 + i%2,  tam - i*10, tam - i*10);
   rect(X4 + i%2,  Y3 + i*10, tam - i*10, tam - i*10);
   
   if(i%2==0){
       fill(colourV, colourV, colourV);
   }else{
     fill(255 - colourV,255 - colourV,255 - colourV);
   }

   rect(X1 + i*10, Y1 + i*10, tam - i*10, tam - i*10);
   rect(X2 + i%2,  Y2 + i%2,  tam - i*10, tam - i*10);
   rect(X3 + i*10, Y1 + i*10, tam - i*10, tam - i*10);
   rect(X4 + i%2,  Y2 + i%2,  tam - i*10, tam - i*10);
   rect(X1 + i*10, Y3 + i*10, tam - i*10, tam - i*10);
   rect(X2 + i%2,  Y4 + i%2,  tam - i*10, tam - i*10);
   rect(X3 + i*10, Y3 + i*10, tam - i*10, tam - i*10);
   rect(X4 + i%2,  Y4 + i%2,  tam - i*10, tam - i*10);
   
   if(chromatic){ 
    fill(255, 0, 0);
    rect(X1, Y2, tam, tam);
    rect(X2, Y1, tam, tam);
    
    fill(255, 125, 0);
    rect(X3, Y2, tam, tam);
    rect(X4, Y1, tam, tam);
    
    fill(255, 255, 0);
    rect(X1, Y4, tam, tam);
    rect(X2, Y3, tam, tam);
    
    fill(0, 255, 0);
    rect(X3, Y4, tam, tam);
    rect(X4, Y3, tam, tam);
    
  }

 }
   
   if(blues){
     fill(0, 255, 255);
     rect(X1, Y1, tam, tam);
     rect(X2, Y2, tam, tam);
     rect(X3, Y3, tam, tam);
     rect(X4, Y4, tam, tam);
     
     fill(0, 90, 255);
     rect(X1, Y3, tam, tam);
     rect(X2, Y4, tam, tam);
     rect(X3, Y1, tam, tam);
     rect(X4, Y2, tam, tam);
     
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
