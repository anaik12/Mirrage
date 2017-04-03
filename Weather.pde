class Wheather{
  Box b;
  PImage img;
  
  
  
  Wheather(Box b){
    this.b = b;
  }
  
  void display(){
    this.img = loadImage("cloud.png");
    image(img, b.bx, b.by+35);
    
    textSize(this.b.bw/6);
    fill(255, 255,255);
    text("35°F", this.b.bx+img.width-10, this.b.by+40, this.b.bw-img.width, this.b.bw-img.height); 
    
    
  }
  
  void mouseReleased(){
    if(mouseX > img.width && mouseY > img.height){
      println(mouseX +"\n" + mouseY);
      textSize(this.b.bw/6);
      fill(0,0,0);
      text("35°F", this.b.bx+img.width-10, this.b.by+40, this.b.bw-img.width, this.b.bw-img.height);       
    }
  }
}