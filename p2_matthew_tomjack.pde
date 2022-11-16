
void setup(){
size(900, 700);
}


void draw(){
  
Table t = loadTable("p2hci.csv");
  
TableRow row = t.getRow(1);

String event = row.getString(0);
int news = row.getInt(1);
int text = row.getInt(2);
int social = row.getInt(3);
float leng = row.getFloat(4);
float light = row.getFloat(5);
float deep = row.getFloat(6);
float last = row.getFloat(7);
float current = row.getFloat(8);
float past = row.getFloat(9);
int steps = row.getInt(10);
float stood = row.getFloat(11);
float exercise = row.getFloat(12);
float morning = row.getFloat(13);
float evening = row.getFloat(14);
float temp = row.getFloat(15);
String forecast = row.getString(16);


PImage img1;
img1 = loadImage("text.png");
PImage img2;
img2 = loadImage("insta.png");
PImage img3;
img3 = loadImage("news.png");
PImage img4;
img4 = loadImage("point.png");
PImage img5;
img5 = loadImage("cloudy2.jpg");

    

  background(#A7A4A4);
  int s = second();  
  int m = minute();  
  int h = hour();    
  
  textSize(50);
  fill(#FFFFFF);
  text(h + ":" + m+  ":" + s, 340,50);
  

  image(img1,35,175, 50, 50);
  image(img2,35,325, 50, 50);
  image(img3,35,475, 50, 50);
  image(img5,15,12, 50, 50);
  
  
  int d = day();   
  int mo = month();  
  int y = year();   

 text( mo+ ":" + d+  ":" + y, 660,50);
 
 text(temp+"F",70, 50);

 
 fill(#FF0303);
 circle(85,175,20);
 circle(85,325,20);
 circle(85,475,20);
 
 fill(#FFFFFF);
 textSize(20);
 text(text, 80,182);
 text(social, 80,332);
 text(news, 80,482);
 
 text("*"+event+"*", 705,75);
 text("L:"+light+"hrs"+ " D:" +deep+"hrs", 735, 220);
 text("Total:"+last+"hrs"+ " vs " +leng+ "hrs", 720, 195);
 
 
 text("Last:" + past+"lbs", 757, 345); 
 text("Curr:" +current+"lbs", 757, 375);
 
 text(exercise + "hrs", 790, 495);
 text(steps + " steps", 770, 520);
 
 textSize(25);
 text("SLEEP", 775, 175);
 text("WEIGHT", 771, 325);
 text("EXERCISE", 765, 475);
 

}
