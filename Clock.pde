class Clock {
  Box clock_box;
  

  Clock (Box b){
    this.clock_box= b;
  } 
  
  void display(){
    String period ="PM";
    String stMin = "";
    int hour = hour();
    int min = minute();
    if(hour < 12 )period = "AM";
    hour = hour()%12;
    if(hour == 0) hour=12;
    stMin = nf(min, 2);   
    
    //displays the time 
    textSize(this.clock_box.bw/5);
    fill(255, 255,255);
    text(hour + ":" +  stMin + " " + period, this.clock_box.bx, this.clock_box.by, this.clock_box.bw, this.clock_box.bh); 
  }//end of display
  
}//end of Clock class