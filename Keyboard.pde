class Keyboard {

  String[] keyboardRow1 = {"1", "2", "3", "4", "5", "6", "7", "8", "9", "0", "BACK"};
  String[] keyboardRow2 = {"Q", "W", "E", "R", "T", "Y", "U", "I", "O", "P", "ENTER"};
  String[] keyboardRow3 = {"A", "S", "D", "F", "G", "H", "J", "K", "L", "CAPS LOCK"};
  String[] keyboardRow4 = {"Z", "X", "C", "V", "B", "N", "M", ",", ".", "?", "SPACE"};
  String[] keyboardRow5 = {"!", "@", "#", "$", "%", "&", "*", "(", ")", "/", "+", "- ", "="};
  String[][] keyMinMaxMapping = {{"A", "40", "70"}, {"S", "80", "70"}};
  StringBuffer letter = new StringBuffer();
  String alphabet = "";
  boolean CAPSLOCK = false;
  int count =0;
  void setup() {
    size(600, 420);
    noStroke();
    background(0);
    textSize(25);
    println("KeyBoard Setup");
    
  }

  void draw1(int translateX, int translateY) { 
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
    stroke(255);
    rect(20, 250, 550, 70, 10);
    if (letter != null) {
      fill(255);
      text(letter.toString(), 20, 290);
    }
    println(count);
    count++;
  }
  


  void mousePressed() {

    if (mouseY > 40 && mouseY <= 70 ) {
      println("Key Pressed in row 1");
      checkForFirstRow();
    } else  if (mouseY > 75 && mouseY <= 105 ) {
      checkForSecondRow();
    } else  if (mouseY > 110 && mouseY <= 140 ) {
      checkForThirdRow();
    } else  if (mouseY > 145 && mouseY <= 175 ) {
      checkForFourthRow();
    } else  if (mouseY > 180 && mouseY <= 210 ) {
      checkForFifthRow();
    }
    redraw();
  }

  void checkForFirstRow() {
    if (mouseX > 40 && mouseX <= 70) letter.append("1");
    if (mouseX > 80 && mouseX <= 110) letter.append("2");
    if (mouseX > 120 && mouseX <= 150) letter.append("3");
    if (mouseX > 160 && mouseX <= 190) letter.append("4");
    if (mouseX > 200 && mouseX <= 230) letter.append("5");
    if (mouseX > 240 && mouseX <= 270) letter.append("6");
    if (mouseX > 280 && mouseX <= 310) letter.append("7");
    if (mouseX > 320 && mouseX <= 350) letter.append("8");
    if (mouseX > 360 && mouseX <= 390) letter.append("9");
    if (mouseX > 400 && mouseX <= 430) letter.append("0");
    if (mouseX > 440 && mouseX <= 530) {
      if (letter.capacity() != 0) letter.deleteCharAt(letter.length()-1);
    }
  }

  void checkForSecondRow() {
    if (mouseX > 40 && mouseX <= 70) alphabet = "Q";
    if (mouseX > 80 && mouseX <= 110) alphabet = "W";
    if (mouseX > 120 && mouseX <= 150) alphabet = "E";
    if (mouseX > 160 && mouseX <= 190) alphabet = "R";
    if (mouseX > 200 && mouseX <= 230) alphabet = "T";
    if (mouseX > 240 && mouseX <= 270) alphabet = "Y";
    if (mouseX > 280 && mouseX <= 310) alphabet = "U";
    if (mouseX > 320 && mouseX <= 350) alphabet = "I";
    if (mouseX > 360 && mouseX <= 390) alphabet = "O";
    if (mouseX > 400 && mouseX <= 430) alphabet = "P";
    if (mouseX > 440 && mouseX <= 530) {
    }
    convertToLowerCase();
    letter.append(alphabet);
  }

  void checkForThirdRow() {
    boolean INCAPSLOCK = false;
    if (mouseX > 40 && mouseX <= 70) alphabet = "A";
    if (mouseX > 80 && mouseX <= 110) alphabet = "S";
    if (mouseX > 120 && mouseX <= 150) alphabet = "D";
    if (mouseX > 160 && mouseX <= 190) alphabet = "F";
    if (mouseX > 200 && mouseX <= 230) alphabet = "5";
    if (mouseX > 240 && mouseX <= 270) alphabet = "G";
    if (mouseX > 280 && mouseX <= 310) alphabet = "H";
    if (mouseX > 320 && mouseX <= 350) alphabet = "J";
    if (mouseX > 360 && mouseX <= 390) alphabet = "K";
    if (mouseX > 400 && mouseX <= 430) alphabet = "L";
    if (mouseX > 440 && mouseX <= 530) {
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
    if (mouseX > 40 && mouseX <= 70) alphabet = "Z";
    if (mouseX > 80 && mouseX <= 110) alphabet = "X";
    if (mouseX > 120 && mouseX <= 150) alphabet = "C";
    if (mouseX > 160 && mouseX <= 190) alphabet = "V";
    if (mouseX > 200 && mouseX <= 230) alphabet = "B";
    if (mouseX > 240 && mouseX <= 270) alphabet = "N";
    if (mouseX > 280 && mouseX <= 310) alphabet = "M";
    if (mouseX > 320 && mouseX <= 350) alphabet = ",";
    if (mouseX > 360 && mouseX <= 390) alphabet = ".";
    if (mouseX > 400 && mouseX <= 430) alphabet = "?";
    if (mouseX > 440 && mouseX <= 530) alphabet = " ";
    convertToLowerCase();
    letter.append(alphabet);
  }

  void checkForFifthRow() {
    if (mouseX > 40 && mouseX <= 70) letter.append("!");
    if (mouseX > 80 && mouseX <= 110) letter.append("@");
    if (mouseX > 120 && mouseX <= 150) letter.append("#");
    if (mouseX > 160 && mouseX <= 190) letter.append("$");
    if (mouseX > 200 && mouseX <= 230) letter.append("%");
    if (mouseX > 240 && mouseX <= 270) letter.append("&");
    if (mouseX > 280 && mouseX <= 310) letter.append("*");
    if (mouseX > 320 && mouseX <= 350) letter.append("(");
    if (mouseX > 360 && mouseX <= 390) letter.append(")");
    if (mouseX > 400 && mouseX <= 430) letter.append("/");
    if (mouseX > 440 && mouseX <= 470) letter.append("+");
    if (mouseX > 480 && mouseX <= 510) letter.append("-");
    if (mouseX > 520 && mouseX <= 540) letter.append("=");
  }

  void convertToLowerCase() {
    if (!CAPSLOCK) {
      alphabet = alphabet.toLowerCase();
    }
    
  }
}