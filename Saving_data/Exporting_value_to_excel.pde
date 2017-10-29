Table table;
String deg_thumb;
String deg_index;
String deg_middle;
String deg_ring;
String deg_little;
String date;
String time;
void setup() {
  table = new Table();
  table.addColumn("Date");
  table.addColumn("Time");
  table.addColumn("Thumb_finger");
  table.addColumn("Index_finger");
  table.addColumn("Middle_finger"); 
  table.addColumn("Ring_finger");
  table.addColumn("Little_finger"); 
  }
  void draw(){
    int day = day();    // Values from 1 - 31
  int month = month();  // Values from 1 - 12
  int year = year();   // 2003, 2004, 2005, etc.
  int second = second();  // Values from 0 - 59
  int minute = minute();  // V    alues from 0 - 59
  int hour = hour();    // Values from 0 - 23
  date = year + "-" + month + "-" + day;
  time = hour + ":" + minute + ":" + second; 
  TableRow newRow = table.addRow();
  newRow.setString("Date", date);
  newRow.setString("Time", time);
  newRow.setString("Thumb_finger", deg_thumb);
  newRow.setString("Index_finger", deg_index);
  newRow.setString("Middle_finger", deg_middle);
  newRow.setString("Ring_finger", deg_ring);
  newRow.setString("Little_finger", deg_little);
  delay(1000);
  }
  String icon;
  void keyPressed()
{
  
 icon = date+"/" + time +".csv";
 saveTable(table, icon);
  exit();
}