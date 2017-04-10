class Health{
  Table table;
  
  void setup(){
   table = loadTable("HealthData.csv", "header");
   

   

   noLoop();
   
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
    
    //key.mouseReleased();
  }

}