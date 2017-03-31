import processing.serial.*;

int grid_width = 2732; 
int grid_height = 1536;
int row =15; int col =15;

PFont f;
Clock myClock;
Grid myGrid;

void setup(){
  size(2732, 1536);
  frameRate(30);
  myGrid = new Grid(grid_width, grid_height, row, col);  
  
  myClock = new Clock(grid_width, grid_height, row, col);
  

  
}

void draw(){
  background(192, 192, 192);
  myGrid.display();
  myClock.display();
  
  
   
}







class Clock {
  int clock_width;
  int clock_height;
  int []size;
  

  Clock (int g_width, int g_height, int r, int c){
    this.clock_width = g_width/c;
    this.clock_height = g_height/r;
    this.size = new int [2];// {this.clock_width, clock_height }
    this.size[0] = clock_width;
    this.size[1] = clock_height;
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
    
    //making the rectangle border 
    fill(192,192,192);
    stroke(204,102,0);
    rect(0, 0, this.clock_width, this.clock_height); 
    
    //displays the time 
    textSize(this.clock_width/5);
    fill(255, 255,255);
     // textAlign(CENTER);  
    text(hour + ":" +  stMin + " " + period, 0, 0, clock_width, clock_height); 
  }//end of display
  
}//end of Clock class

class Grid {
  int g_width; int g_height;
  int box_w; int box_h;
  int [][]grid; 
  int row; int col;
  
  Grid(int w, int h, int col, int row){
    this.g_width = w;
    this.g_height = h;
    this.box_w = g_width/col;
    this.box_h = g_height/row; 
    this.grid = new int[row][col];
    //for (int i=0; i<this.row; i++){
    //  for (int j=0; j<this.col; j++){
    //    this.grid[i][j]= j*this.box_h;
    //    this.grid[j][i] = i*this.box_w;
    //    System.out.println(j*this.box_h + "\n" + i*this.box_w + "\n");
    //    System.out.println("something");
    //  }
    //}
    
    this.row = row; this.col = col;
  }
  
  void display(){
    for (int i=0; i<this.row; i++){
      for (int j=0; j<this.col; j++){
        //making the rectangle border 
        fill(192,192,192);
        stroke(204,102,0);
        rect(i*this.box_w, j*this.box_h, this.box_w, this.box_h);  
        //rect(grid[i][j], grid[i][j],  this.box_w, this.box_h); 
      }
    }
    
  }//end of display


}//end Grid class