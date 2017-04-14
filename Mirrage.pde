
int d = day();
int m = month();
String month;
String date;
String day;
int time;
int interval =2000;
//String russian = "privet";
//String english = "hello";
String displayed = "";
boolean settingsOn=false;
boolean sizeOn = false;
long duration=-3000;
Keyboard key = new Keyboard();
ImageButton loginButton;
ImageButton eyeButton;
ImageButton eyeButtonClosed;
ImageButton doorButton;
ImageButton cloudButton;
ImageButton userButton;
ImageButton musicButton;
ImageButton calendarButton;
ImageButton skipButton;
ImageButtonLight lightButton;
ImageButton settingsButton;
//ImageButton logoutButton;
ImageButton healthButton;
ImageButton sizeB;
ImageButton Bigger;
ImageButton Smaller;
PImage logo;
String [] greetings;


int count;
void setup(){
  
   
    size(600, 600);
    noStroke();
    background(128,128.128);
    textSize(25);
    greetings = new String[10];
    greetings[0] = "Hello!";  //Enlgish
    greetings[1] = "Привет!"; //Russian
    greetings[2] = "Hola!";  //Spanish
    greetings[3] = "مرحبا!";   //Arabic
    greetings[4] = "नमस्ते!";  //Hindi
    greetings[5] = "Γεια!";    //Greek
    greetings[6] = "Oi!";      //Portuguese
    greetings[7] = "Ciao!";    //Italian
    greetings[8] = "Salut!";   //French
    greetings[9] = "Hallo!";   //German
    textSize(30);
    //buttons = new ImageButton[4];
    displayed = greetings[0];
    time = millis();
    //key.setup();
    PImage login = loadImage("Icons/login.png");
    PImage logout = loadImage("Icons/logout.png");
    PImage user = loadImage("Icons/createUser.png");
    PImage musicW = loadImage("Icons/music_white.png");
    PImage calendarW = loadImage("Icons/calendar_white.png");
    PImage calendarB = loadImage("Icons/calendar_blue.png");
    PImage musicB = loadImage("Icons/music_blue.png");
    PImage eye = loadImage("Icons/openEye.png");
    PImage eyeHidden = loadImage("Icons/hidenEye.png");
    PImage cloudW = loadImage("Icons/cloud_white.png");
    PImage cloudB = loadImage("Icons/cloud_blue.png");
    PImage skip = loadImage("Icons/skip.png");
    PImage ideaW = loadImage("Icons/idea_white.png");
    PImage settingsB = loadImage("Icons/settings_blue.png");
    PImage settingsW = loadImage("Icons/settings_white.png");
    PImage healthW = loadImage("Icons/first-aid-kit_white.png");
    PImage healthB = loadImage("Icons/first-aid-kit_blue.png");
    PImage ideaBY = loadImage("Icons/idea_brightY.png");
    PImage ideaLY = loadImage("Icons/idea_lightY.png");
    PImage ideaR = loadImage("Icons/idea_red.png");
    PImage ideaG = loadImage("Icons/idea_green.png");
    PImage sizeW = loadImage("Icons/size.png");
    PImage sizeBl = loadImage("Icons/size_blue.png");
    PImage plusW = loadImage("Icons/plus.png");
    PImage plusB = loadImage("Icons/plus_blue.png");
    PImage minusW= loadImage("Icons/minus.png");
    PImage minusB= loadImage("Icons/minus_blue.png");
    logo = loadImage("Icons/logo.png");
    logo.resize(250,250);
    plusW.resize(32,32);
    minusW.resize(32,32);
    plusB.resize(32,32);
    minusB.resize(32,32);
    //PImage d = loadImage("Icons/login - Copy.png");

 

   eyeButton = new ImageButton(535, 550, eye.width, eye.height, eye, eyeHidden);
   cloudButton = new ImageButton(530, 50, cloudW.width, cloudW.height, cloudW, cloudB);
   loginButton = new ImageButton(455, 550, login.width, login.height, login, logout);
   userButton = new ImageButton(400, 550, user.width, user.height, user, user);
   musicButton = new ImageButton(535, 350, musicW.width, musicW.height, musicW, musicB);
   calendarButton = new ImageButton(535, 150, calendarW.width, calendarW.height, calendarW, calendarB);
   skipButton = new ImageButton(400, 350, skip.width, skip.height, skip, skip);
   lightButton = new ImageButtonLight(0, 30, ideaW.width,ideaW.height, ideaW, ideaBY, ideaLY, ideaR);
   settingsButton = new ImageButton(0, 530, settingsW.width,settingsW.height, settingsW, settingsB);
   healthButton = new ImageButton(535, 250, healthW.width, healthW.height, healthW, healthB);
   sizeB = new ImageButton(50, 50, sizeW.width, sizeW.height, sizeW, sizeBl);
   Bigger =new ImageButton(70, 530, plusW.width, plusW.height, plusW, plusB);
   Smaller =new ImageButton(110, 530, minusW.width, minusW.height, minusW, minusB);
    
   if(m==1)
   month = "Jan";
   if(m==2)
   month = "Feb";
   if(m==3)
   month = "Mar";
   if(m==4)
   month = "Apr";
   if(m==5)
   month = "May";
   if(m==6)
   month = "Jun";
   if(m==7)
   month = "Jul";
   if(m==8)
   month = "Aug";
   if(m==9)
   month = "Sep";
   if(m==10)
   month = "Oct";
   if(m==11)
   month = "Nov";
   if(m==12)
   month = "Dec";
   
  
   
   date = day +"," + month+" "+d;
   if(settingsButton.clicked=true)
 {
   println("settings clicked");
 }

}


void draw(){
   background(128,128.128);
   
   //text(date, 50,50);
   
   //text(month,760,50);
   
   
      
  //if(millis()<3000){   //display logo for the first 3 seconds
  //   image(logo,200,200);
    
   //}
   
   
  /*else if(millis()>3000&&millis()<13000){   //between 3 and 13 seconds display greetings in different languages
       loginButton.display();
       loginButton.update(); 
           if
           (loginButton.clicked==true)
              {
                  key.draw1(0,0);
               }
            else
            {
               text(displayed,270,300);
               displayed = greetings[(millis()-3000)/1000 % greetings.length];
    }
  }
 */ 
 //else if (millis()>13000){
 eyeButton.update();
 eyeButton.display();
 cloudButton.update();
 cloudButton.display();
  loginButton.display();
  loginButton.update();
   userButton.display();
  userButton.update();
  musicButton.display();
  musicButton.update();
  calendarButton.display();
  calendarButton.update();
  lightButton.display();
  lightButton.update();
  settingsButton.display();
  settingsButton.update();
   healthButton.display();
  healthButton.update();
  
 // }
 //println(settingsOn);
 if (settingsOn==true){
   
 sizeB.display();
 sizeB.update();
 }
 
 if (sizeOn==true){
   
 Bigger.display();
 Bigger.update();
 Smaller.display();
 Smaller.update();
 }
 
}
  
   
  
 /* else if(millis()>13000){
     
      if(loginButton.clicked==true)
      {
          key.draw1(0,0);
       }
    }
    */


  
 
  
  
  //key.mouseReleased();

 
 
 
 
  //if( musicButton.clicked==true)
//  {
 //   skipButton.display();
   // skipButton.update();
 // }



void mousePressed(){
  
  //key.draw1(0,0);
  //key.mousePressed();
  eyeButton.mousePressed();
  cloudButton.mousePressed(); 
  loginButton.mousePressed();
   userButton.mousePressed();
   musicButton.mousePressed();
   calendarButton.mousePressed();
    lightButton.mousePressed();
    settingsButton.mousePressed();
    healthButton.mousePressed();
 sizeB.mousePressed();
 Bigger.mousePressed();
 Smaller.mousePressed();

   
 // redraw();
  
  
    
}
void mouseDragged(){
eyeButton.mouseDragged();
cloudButton.mouseDragged();
loginButton.mouseDragged();
userButton.mouseDragged();
musicButton.mouseDragged();
calendarButton.mouseDragged();
lightButton.mouseDragged();
settingsButton.mouseDragged();
healthButton.mouseDragged();
sizeB.mouseDragged();


}
void mouseReleased() {
  eyeButton.mouseReleased();
  cloudButton.mouseReleased();
  loginButton.mouseReleased();
  userButton.mouseReleased();
  musicButton.mouseReleased();
  calendarButton.mouseReleased();
  lightButton.mouseReleased();
  settingsButton.mouseReleased();
  healthButton.mouseReleased();
  sizeB.mouseReleased();
  
}