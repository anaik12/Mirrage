
Keyboard key = new Keyboard();

void setup(){
  size(1200, 1020);
    noStroke();
    background(128,128.128);
    textSize(25);
    //key.setup();
    
}


void draw(){
  //key.draw1(0,0);
  
  //key.mouseReleased();
}


void mousePressed(){
  key.draw1(0,0);
  key.mousePressed();
  redraw();
}