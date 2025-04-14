 PImage img;
void setup(){
  background(255);
   size(800, 400);
  
  img = loadImage("pucca.jpg");
  
}

void draw(){
  image(img, 45, 30);
   
  fill(5, 5, 5);
  circle(500, 115, 70);
  strokeWeight(11);
    
  circle(700, 115, 70);
  fill(255, 220, 200);
  circle(525, 270, 20);
  circle(675, 270, 20);
  fill(255, 220, 200);
  
  ellipse(600, 150, 160, 125);
  fill(255, 0, 0);
  strokeWeight(6);
  
  rect(555, 215, 90, 75);
  fill(5, 5, 5);
  
  fill(255, 128, 106);
  circle(550, 170, 20);
  circle(650, 170, 20);

  line(535, 145, 570, 155);
  line(630, 155, 665, 145);
  
  noFill();
  curve(560, 125, 590, 175, 615, 175, 640, 125);
  curve(510, 155, 540, 115, 570, 115, 610, 155);
  curve(600, 155, 630, 115, 660, 115, 690, 155);
   
  fill(255, 0, 0);
  triangle(650, 280, 690, 250, 640, 210);
  triangle(510, 250, 550, 280, 560, 210);
  
  fill(5, 5, 5);
  ellipse(580, 315, 30, 50); 
  ellipse(620, 315, 30, 50);
}
  
 
