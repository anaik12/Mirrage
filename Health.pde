//class Health{
  Table table;
  
  void setup(){
   table = loadTable("HealthData.csv", "header");
   //size(1200, 1020);
    noStroke();
    background(128,128.128);
    textSize(25);
   
   
   println(table.getRowCount() + "total rows in table");
   int[] id = new int [14];
   String[] steps = new String[14];
   String[] sleep = new String[14];
   int i = 0;
   
   for (TableRow row : table.rows()){
     id[i] = row.getInt("id");
     steps[i] = row.getString("Steps");
     sleep[i] = row.getString("Sleep");
     println("Steps " + steps[i] + "     Sleep  (" + sleep[i] + ") ID =" +id[i]);
     i++;
     
     
     
   }
  }

  void drawHealth(){
    //key.draw1(0,0);
    
    //key.mouseReleased
    int d = day();    // Values from 1 - 31

    int m = month();  // Values from 1 - 12

    int y = year();   // 2003, 2004, 2005, etc.

    String s = String.valueOf(d);

    text(s, 10, 28);

    s = String.valueOf(m);

    text(s, 10, 56); 

    s = String.valueOf(y);

    text(s, 0, 0);
    
    
  }

//}