import java.awt.*;


class Keyboard{

  String[] keyboardRow1 = {"1", "2", "3", "4", "5", "6", "7", "8", "9", "0", "BACK"};
  String[] keyboardRow2 = {"Q", "W", "E", "R", "T", "Y", "U", "I", "O", "P", "ENTER"};
  String[] keyboardRow3 = {"A", "S", "D", "F", "G", "H", "J", "K", "L", "CAPS LOCK"};
  String[] keyboardRow4 = {"Z", "X", "C", "V", "B", "N", "M", ",", ".", "?", "SPACE"};
  String[] keyboardRow5 = {"!", "@", "#", "$", "%", "&", "*", "(", ")", "/", "+", "- ", "="};
  String[][] keyMinMaxMapping = {{"A", "40", "70"}, {"S", "80", "70"}};
  StringBuffer letter = new StringBuffer();
  StringBuffer finalletter = new StringBuffer();
  
  String alphabet = "";
  boolean CAPSLOCK = false;
  int count =0;
  int currentTranslateX = 0;
  int currentTranslateY = 0;
  
  //boolean closeKeyboard = false;

  void setup() {
    size(600, 420);
    noStroke();
    background(0);
    textSize(25);
    println("KeyBoard Setup");
    //noLoop();
  }

  void display(int translateX, int translateY) { 
    currentTranslateX = translateX;
    currentTranslateY = translateY;
    translate(translateX, translateY);
    int x =0;
    int y=65; 
    fill(0);
    //noFill();
    stroke(255);
    rect(20, 20, 550, 210);
    for (int i=0; i<keyboardRow1.length-1; i++) {
      x=x+40;
      fill(255);
      rect(x, 40, 30, 30);
      fill(0);
      text(keyboardRow1[i], x+4, y);
    }
    //Handle Back key
    x=x+40;
    fill(255);
    rect(x, 40, 90, 30);
    fill(0);
    text(keyboardRow1[keyboardRow1.length-1], x+4, y);

    x=0;
    for (int i=0; i<keyboardRow2.length-1; i++) {
      x=x+40;
      fill(255);
      rect(x, 75, 30, 30);
      fill(0);
      text(keyboardRow2[i], x+4, 100);
    }
    //handle ENTER key
    x=x+40;
    fill(255);
    rect(x, 75, 90, 30);
    fill(0);
    text(keyboardRow2[keyboardRow2.length-1], x+10, 100);

    x=0;
    for (int i=0; i<keyboardRow3.length-1; i++) {
      x=x+40;
      fill(255);
      rect(x, 110, 30, 30);
      fill(0);
      text(keyboardRow3[i], x+4, 135);
    }
    //Handle Caps lock key
    x=x+40;
    fill(255);
    rect(x, 110, 160, 30);
    //handling capslock key color
    if (CAPSLOCK) fill(0, 255, 0);
    else fill(0); 
    text(keyboardRow3[keyboardRow3.length-1], x+10, 135);

    //keyboard 4th row
    x=0;
    for (int i=0; i<keyboardRow4.length-1; i++) {
      x=x+40;
      fill(255);
      rect(x, 145, 30, 30);
      fill(0);
      text(keyboardRow4[i], x+4, 170);
    }
    //Handle Space key
    x=x+40;
    fill(255);
    rect(x, 145, 100, 30);
    fill(0);
    text(keyboardRow4[keyboardRow4.length-1], x+10, 170);
    //keyboard 4th row
    x=0;
    for (int i=0; i<keyboardRow5.length; i++) {
      x=x+40;
      fill(255);
      rect(x, 180, 30, 30);
      fill(0);
      text(keyboardRow5[i], x+4, 205);
    }
    //draw exit button
    stroke(0);
    fill(255);
    rect(570, 20, 30, 30);
    fill(0);
    text("x", 577, 45);

    //text handling box
    stroke(255);
    rect(20, 250, 550, 70, 10);
    if (letter != null) {
      fill(255);
      text(letter.toString(), 20, 290);
    }
    //println(count);
    count++;
    
    //mouseReleased();
  }



  void mousePressed() {
     println(mouseX + " " +mouseY);
    if (mouseY > currentTranslateY + 40 && mouseY <= currentTranslateY + 70 ) {
      println("Key Pressed in row 1");
      checkForFirstRow();
    } else  if (mouseY > currentTranslateY + 75 && mouseY <= currentTranslateY + 105 ) {
      checkForSecondRow();
    } else  if (mouseY > currentTranslateY + 110 && mouseY <= currentTranslateY + 140 ) {
      checkForThirdRow();
    } else  if (mouseY > currentTranslateY + 145 && mouseY <= currentTranslateY + 175 ) {
      checkForFourthRow();
    } else  if (mouseY > currentTranslateY + 180 && mouseY <= currentTranslateY + 210 ) {
      checkForFifthRow();
    } else if (mouseY > currentTranslateY + 20 && mouseY <= currentTranslateY + 50 && 
      mouseX > currentTranslateX + 570 && mouseX <= currentTranslateX + 600) {
        println("exit pressed");
        Mirrage.keyboardActivate = false;
      }
    //redraw();
  }
  
  void destroyKeyBoard(){
    //currentTranslateX = translateX;
    //currentTranslateY = translateY;
    translate(currentTranslateX, currentTranslateY);
    noStroke();
  fill(128,128,128);
    rect(20, 20, 600, 310);
    //setup();
  }
  
  void stop(){
    exit();
  }

  void checkForFirstRow() {
    if (mouseX >= currentTranslateX + 40 && mouseX <= currentTranslateX + 70) letter.append("1");
    if (mouseX >= currentTranslateX + 80 && mouseX <= currentTranslateX + 110) letter.append("2");
    if (mouseX >= currentTranslateX + 120 && mouseX <= currentTranslateX + 150) letter.append("3");
    if (mouseX >= currentTranslateX + 160 && mouseX <= currentTranslateX + 190) letter.append("4");
    if (mouseX >= currentTranslateX + 200 && mouseX <= currentTranslateX + 230) letter.append("5");
    if (mouseX >= currentTranslateX + 240 && mouseX <= currentTranslateX + 270) letter.append("6");
    if (mouseX >= currentTranslateX + 280 && mouseX <= currentTranslateX + 310) letter.append("7");
    if (mouseX >= currentTranslateX + 320 && mouseX <= currentTranslateX + 350) letter.append("8");
    if (mouseX >= currentTranslateX + 360 && mouseX <= currentTranslateX + 390) letter.append("9");
    if (mouseX >= currentTranslateX + 400 && mouseX <= currentTranslateX + 430) letter.append("0");
    if (mouseX >= currentTranslateX + 440 && mouseX <= currentTranslateX + 530) {
      if (letter.capacity() != 0) letter.deleteCharAt(letter.length()-1);
    }
  }

  void checkForSecondRow() {
    if (mouseX > currentTranslateX + 40 && mouseX <= currentTranslateX + 70) alphabet = "Q";
    if (mouseX > currentTranslateX + 80 && mouseX <= currentTranslateX + 110) alphabet = "W";
    if (mouseX > currentTranslateX + 120 && mouseX <= currentTranslateX + 150) alphabet = "E";
    if (mouseX > currentTranslateX + 160 && mouseX <= currentTranslateX + 190) alphabet = "R";
    if (mouseX > currentTranslateX + 200 && mouseX <= currentTranslateX + 230) alphabet = "T";
    if (mouseX > currentTranslateX + 240 && mouseX <= currentTranslateX + 270) alphabet = "Y";
    if (mouseX > currentTranslateX + 280 && mouseX <= currentTranslateX + 310) alphabet = "U";
    if (mouseX > currentTranslateX + 320 && mouseX <= currentTranslateX + 350) alphabet = "I";
    if (mouseX > currentTranslateX + 360 && mouseX <= currentTranslateX + 390) alphabet = "O";
    if (mouseX > currentTranslateX + 400 && mouseX <= currentTranslateX + 430) alphabet = "P";
    if (mouseX > currentTranslateX + 440 && mouseX <= currentTranslateX + 530) {
      finalletter = letter;
    }
    convertToLowerCase();
    letter.append(alphabet);
  }

  void checkForThirdRow() {
    boolean INCAPSLOCK = false;
    if (mouseX >= currentTranslateX + 40 && mouseX <= currentTranslateX + 70) alphabet = "A";
    if (mouseX >= currentTranslateX + 80 && mouseX <= currentTranslateX + 110) alphabet = "S";
    if (mouseX >= currentTranslateX + 120 && mouseX <= currentTranslateX + 150) alphabet = "D";
    if (mouseX >= currentTranslateX + 160 && mouseX <= currentTranslateX + 190) alphabet = "F";
    if (mouseX >= currentTranslateX + 200 && mouseX <= currentTranslateX + 230) alphabet = "G";
    if (mouseX >= currentTranslateX + 240 && mouseX <= currentTranslateX + 270) alphabet = "H";
    if (mouseX >= currentTranslateX + 280 && mouseX <= currentTranslateX + 310) alphabet = "J";
    if (mouseX >= currentTranslateX + 320 && mouseX <= currentTranslateX + 350) alphabet = "K";
    if (mouseX >= currentTranslateX + 360 && mouseX <= currentTranslateX + 390) alphabet = "L";
    //if (mouseX >= currentTranslateX + 400 && mouseX <= currentTranslateX + 430) alphabet = "L";
    if (mouseX >= currentTranslateX + 400 && mouseX <= currentTranslateX + 530) {
      CAPSLOCK = !CAPSLOCK;
      fill(0, 255, 0);
      INCAPSLOCK = true;
    }
    convertToLowerCase();
    if (!INCAPSLOCK) {
      letter.append(alphabet);
    }
  }

  void checkForFourthRow() {
    if (mouseX >= currentTranslateX + 40 && mouseX <= currentTranslateX + 70) alphabet = "Z";
    if (mouseX >= currentTranslateX + 80 && mouseX <= currentTranslateX + 110) alphabet = "X";
    if (mouseX >= currentTranslateX + 120 && mouseX <= currentTranslateX + 150) alphabet = "C";
    if (mouseX >= currentTranslateX + 160 && mouseX <= currentTranslateX + 190) alphabet = "V";
    if (mouseX >= currentTranslateX + 200 && mouseX <= currentTranslateX + 230) alphabet = "B";
    if (mouseX >= currentTranslateX + 240 && mouseX <= currentTranslateX + 270) alphabet = "N";
    if (mouseX >= currentTranslateX + 280 && mouseX <= currentTranslateX + 310) alphabet = "M";
    if (mouseX >= currentTranslateX + 320 && mouseX <= currentTranslateX + 350) alphabet = ",";
    if (mouseX >= currentTranslateX + 360 && mouseX <= currentTranslateX + 390) alphabet = ".";
    if (mouseX >= currentTranslateX + 400 && mouseX <= currentTranslateX + 430) alphabet = "?";
    if (mouseX >= currentTranslateX + 440 && mouseX <= currentTranslateX + 530) alphabet = " ";
    convertToLowerCase();
    letter.append(alphabet);
  }

  void checkForFifthRow() {
    if (mouseX >= currentTranslateX + 40 && mouseX <= currentTranslateX + 70) letter.append("!");
    if (mouseX >= currentTranslateX + 80 && mouseX <= currentTranslateX + 110) letter.append("@");
    if (mouseX >= currentTranslateX + 120 && mouseX <= currentTranslateX + 150) letter.append("#");
    if (mouseX >= currentTranslateX + 160 && mouseX <= currentTranslateX + 190) letter.append("$");
    if (mouseX >= currentTranslateX + 200 && mouseX <= currentTranslateX + 230) letter.append("%");
    if (mouseX >= currentTranslateX + 240 && mouseX <= currentTranslateX + 270) letter.append("&");
    if (mouseX >= currentTranslateX + 280 && mouseX <= currentTranslateX + 310) letter.append("*");
    if (mouseX >= currentTranslateX + 320 && mouseX <= currentTranslateX + 350) letter.append("(");
    if (mouseX >= currentTranslateX + 360 && mouseX <= currentTranslateX + 390) letter.append(")");
    if (mouseX >= currentTranslateX + 400 && mouseX <= currentTranslateX + 430) letter.append("/");
    if (mouseX >= currentTranslateX + 440 && mouseX <= currentTranslateX + 470) letter.append("+");
    if (mouseX >= currentTranslateX + 480 && mouseX <= currentTranslateX + 510) letter.append("-");
    if (mouseX >= currentTranslateX + 520 && mouseX <= currentTranslateX + 540) letter.append("=");
  }

  void convertToLowerCase() {
    if (!CAPSLOCK) {
      alphabet = alphabet.toLowerCase();
    }
  }
}