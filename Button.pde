class Button

{

  float x, y;
  int count;
  float w, h;

  boolean overImage = false;
  boolean clicked = false;   
  boolean locked= false;
  float xOffset=0.0;
  float yOffset= 0.0;
  

  void clicked() {

    if(overImage && mousePressed) {

      clicked = true;

    } else {

      clicked = false;

    }    

  }

  

  boolean overImage(float x, float y, float width, float height) {

  if (mouseX >= x && mouseX <= x+width && 

      mouseY >= y && mouseY <= y+height) {

    return true;

  } else {

    return false;

    }

  }

}



class ImageButton extends Button 

{

  PImage base;

 //PImage roll;

  PImage clickedImage;

  PImage currentimage;



  ImageButton(float ix, float iy, float iw, float ih, PImage ibase, PImage idown) 

  {

    x = ix;

    y = iy;

    w = iw;

    h = ih;

    base = ibase;
    clickedImage = idown;
    currentimage = base;

  }

  

  void update() 

  {

    overImage();

    clicked();

    if(clicked) {
     
     //color c = color(48, 139, 206);// define color 'c'
     // strokeWeight(4);
     // stroke(c);
     // noFill();
     // rect( x,y,w,h);
      currentimage = clickedImage;
      

    } 

     else {
     if(count%2==0){
 
      currentimage = base;
     }

    }
  }

  
  void overImage() 

  {

    if( overImage(x, y, w, h) ) {
      
      overImage = true;

    } else {

      overImage = false;
      
    }

  }
  void display() 

  {

    image(currentimage, x, y);

  }
 
void mousePressed() {
  count++;
  if(overImage(x, y, w, h)) { 
    locked = true; 
  } else {
    locked = false;
  }
  xOffset = mouseX-x; 
  yOffset = mouseY-y; 
 

}

void mouseDragged() {
  if(locked) {
    x = mouseX-xOffset; 
    y = mouseY-yOffset; 
  }
}

void mouseReleased() {
  locked = false;
}




}