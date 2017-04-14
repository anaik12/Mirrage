class ImageButtonLight extends Button
{
  
  

  PImage base;
  PImage second;
  PImage third;
  PImage forth;
  PImage clickedImage;
  PImage clickedImage2;
  PImage clickedImage3;
  PImage currentimage;



  ImageButtonLight(float ix, float iy, float iw, float ih, PImage ibase, PImage iSec, PImage ithird, PImage iforth ) 

  {

    x = ix;

    y = iy;

    w = iw;

    h = ih;

    base = ibase;
    clickedImage = iSec;
    clickedImage2 = ithird;
    clickedImage3  = iforth;
    currentimage = base;

  }

  

  void update() 

  {

    overImage();

    clicked();

    if(clicked) {
     if(count>4)
     count=1;
     
     if(count==1){
      currentimage = clickedImage;
     }
     
     if(count==2){
 
      currentimage = clickedImage2;
     }
     
     if(count==3){
 
      currentimage = clickedImage3;
     }
     if(count==4){
 
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