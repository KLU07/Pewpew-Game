void intro() {
  //BACKGROUND
  background(yellow);
  
  
  //TEXT "PEWPEW GAME"
  fill(white);
  textSize(130);
  text("PEWPEW GAME",400,180);

  //TEXT "OPTIONS"
  fill(white);
  textSize(80);
  text("OPTIONS",400,460);

  //TRIANGLE TO SELECT OPTIONS
  fill(white);
  triangle(250,490,285,475,250,460);  
  triangle(550,490,515,475,550,460);  
  
  
  //TEXT "PLAY"
  fill(white);
  textSize(80);
  text("PLAY",400,550);
  
  //TRIANGLE TO SELECT PLAY
  fill(white);
  triangle(295,580,330,565,295,550); 
  triangle(500,580,465,565,500,550);  
}


//=========================================
void introClicks() {
  //SWITCH TO GAME MODE
  //mode = GAME;
  
  //OPTIONS
  if (mouseX > 285 && mouseX < 515 && mouseY > 460 && mouseY < 490) {
    mode = OPTIONS;
  }
  
  
  //PLAY
  if (mouseX > 330 && mouseX < 465 && mouseY > 550 && mouseY < 580) {
    mode = GAME;
  }  
}
