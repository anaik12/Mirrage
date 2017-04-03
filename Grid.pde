class Grid{
  int g_width; int g_height;
  int box_w; int box_h;
  //int [][]grid; 
  Box boxes[];
  int grow; int gcol;
  
  Grid(int w, int h, int col, int row){
    this.g_width = w;
    this.g_height = h;
    this.box_w = g_width/col;
    this.box_h = g_height/row; 
    this.boxes = new Box[row*col];
    
    int numboxCounter=0;
    for (int i=0; i<row;i++){
      for (int j=0; j<col; j++){
        //Box b = new Box(i, j, i*col, j*row, this.box_w, this.box_h);
        Box b = new Box(i, j, i*box_w, j*box_h, this.box_w, this.box_h);
        boxes[numboxCounter]=b;
        numboxCounter++;
      }
    }
  }
  
  void display(){
    for (int i=0; i<this.boxes.length; i++){    
        fill(192,192,192);
        stroke(204,102,0);
        rect(this.boxes[i].bx, this.boxes[i].by, this.boxes[i].bw, this.boxes[i].bh);
        //println(
     }  
    
  }//end of display


}