
Keyboard key = new Keyboard();
static boolean keyboardActivate = false;
static boolean closeKeyboard = false;
int count = 0;
int WIDTH = 1200;
int HEIGHT = 1020;

NewsFeed news = new NewsFeed();

void setup(){
  size(1600, 1020);
    noStroke();
    background(128,128,128);
    textSize(25);
    
}


void draw(){
  
  stroke(255);
  fill(0);
   rect(580, HEIGHT - 50 ,150, 50, 20);
   fill(255);
   text("KeyBoard", WIDTH/2, HEIGHT - 20 );
   text(key.finalletter.toString(), 0, 0);
   if(keyboardActivate == true) key.display(WIDTH/3 - 50, HEIGHT - 420);
   else {
     key.destroyKeyBoard();
   }
   //news.display();
   text(key.finalletter.toString(), 0, 0);
   
}

void mouseReleased(){
  
  if (mouseY > HEIGHT - 50 && mouseY <= HEIGHT && mouseX > 600 && mouseX <= 750){ 
    keyboardActivate = true;
    //key.mousePressed();
  }
  //if (mouseY > 500 && mouseY <= 600 && mouseX > 620 && mouseX <= 720) keyboardActivate = false;

  key.mousePressed();
  
}