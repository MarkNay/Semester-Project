PImage img;
PImage img2;
PImage img3;
PImage img4;
String choice3 = "";
String choice = "";
String choice2 = "";
boolean press = false;
boolean press2 = false;
boolean pressNo1 = false;
int numOfCredits = 0;
int gradesScore = 50;
int wealthScore = 0;
int stressScore = 10;
int happinessScore = 85;
int workHours = 0;
int studyGroup;
int timeStudying;
int timeInClass;
int selfCare;
int totalGameScore;


void setup() {
  background (0);
  size (1200, 700);
  background(0);
  textSize(32);
  fill(255, 223, 0); 
  text("UMBC LIFE SIM 2020 - QUARANTINE EDITION", 255, 70);
  textSize(16);
  fill(255);
  text("Campus life has never been so lonely", 450, 120);
  img = loadImage("Online Learning.jpg");
  image(img, 450, 250); 

  Buttons buttons1 = new Buttons ();
  Buttons buttons2 = new Buttons ();

  //Exit button
  fill(255, 223, 0);
  rect(buttons1.x, buttons1.y, buttons1.buttonSizeX, buttons1.buttonSizeY);
  fill(0);
  text("Exit Game", 75, 615);
  fill(255, 223, 0);
  //start button
  rect(buttons2.x + 900, buttons2.y, buttons1.buttonSizeX, buttons1.buttonSizeY);
  fill(0);
  text("Start Game", 970, 615);
}

void draw() {
  //these screens will be randomized every week
  if (press == true) {
    newScreen();
  }
  if (press2 == true) {
    newScreen2();
  }
  if (pressNo1 == true) {
    newScreen3();
  }
  //loop will go here after every 5 screens code will run to update game scores
  //new week starts after loop runs
}


void mousePressed() {
  //press Start Game makes press true
  if (mouseX>950 && mouseX<1150 && mouseY>550 && mouseY<650) {
    press = true;
  }
  //exit screen
  if (mouseX>50 && mouseX<250 && mouseY>550 && mouseY<650) {
    background(0);
    noLoop();
    fill(255, 223, 0);
    textSize(55);
    text("YOU ARE NOW A DROPOUT, GOODLUCK!", CENTER+67, 350);
  }
  //When mouse press on continue button changes press2 to true
  if (mouseX>950 && mouseX<1150 && mouseY>349 && mouseY<395) {
    press2 = true;
  }  
  //when press "no" switches to newscreen3
  if (mouseX>775 && mouseX<925 && mouseY>320 && mouseY<415 ) {
    pressNo1 = true;
  }
  //when press 2nd continue button changes to newscreen3
}


void newScreen() {
  //opening counselor screen
  //this screen will be only used once during the game
  background(0);
  img2 = loadImage("School Counselor.png");
  image(img2, 50, 250);
  textSize(32);
  fill(255);
  text("How many credits do you have", 455, 270);
  text("planned for the semester?", 455, 300);

  fill(255, 223, 0);
  rect(455, 350, 560, 45);
  textSize(24);
  fill(0);
  text("Enter Number of Credits here: " + choice, 465, 380);

  //white textbox
  fill(255);
  rect(960, 350, 55, 45);

  //following code shows game score data
  fill(255, 223, 0);
  rect(30, 20, 200, 95, 7);
  textSize(24);
  fill(0);
  text("Total Points: " + totalGameScore, 50, 75);

  fill(255, 223, 0);
  rect(450, 20, 140, 45);
  fill(0);
  text("Stress: " + stressScore, 460, 50);

  fill(255, 223, 0);
  rect(650, 20, 140, 45);
  fill(0);
  text("Wealth: " + wealthScore, 660, 50);

  fill(255, 223, 0);
  rect(850, 20, 170, 45);
  fill(0);
  text("Happiness: " + happinessScore, 850, 50);

  fill(255, 223, 0);
  rect(1050, 20, 140, 45);
  fill(0);
  text("Grades: " + gradesScore, 1060, 50);

  //continue button
  Buttons buttons1 = new Buttons ();
  Buttons buttons3 = new Buttons ();

  fill(255, 223, 0);
  textSize(16);
  rect(buttons3.x + 900, buttons3.y-200, buttons1.buttonSizeX, buttons1.buttonSizeY-55);
  fill(0);
  text("Continue", 970, 380);
}


void newScreen2() {
  //work hours screen
  background(0);
  img3 = loadImage("Working.png");
  image(img3, 20, 250);
  textSize(32);
  fill(255);
  text("Do you have a job?", 575, 270);
  fill(0, 255, 0);
  rect(575, 320, 150, 95, 7);
  fill(0);
  text("Yes", 630, 380);
  fill(255, 0, 0);

  rect(775, 320, 150, 95, 7);
  fill(0);
  text("NO", 830, 380);

  fill(255);
  text("If you said yes how many hours?" + choice2, 575, 490);
  fill(255);
  rect(575, 550, 55, 45);

  //following code shows game score data
  fill(255, 223, 0);
  rect(30, 20, 200, 95, 7);
  textSize(24);
  fill(0);
  text("Total Points: " + totalGameScore, 50, 75);

  fill(255, 223, 0);
  rect(450, 20, 140, 45);
  fill(0);
  text("Stress: " + stressScore, 460, 50);

  fill(255, 223, 0);
  rect(650, 20, 140, 45);
  fill(0);
  text("Wealth: " + wealthScore, 660, 50);

  fill(255, 223, 0);
  rect(850, 20, 170, 45);
  fill(0);
  text("Happiness: " + happinessScore, 850, 50);

  fill(255, 223, 0);
  rect(1050, 20, 140, 45);
  fill(0);
  text("Grades: " + gradesScore, 1060, 50);
}

void newScreen3() {
  //studying screen
  background(0);
  img4 = loadImage("Studying.jpg");
  image(img4, 10, 230);
  textSize(32);
  fill(255);
  text("How much time do you spend studying?", 545, 270);
  fill(255, 223, 0);
  rect(555, 350, 560, 45);
  textSize(24);
  fill(0, 0, 255);
  text("Enter Number of hours here: " + choice3, 565, 380);
  
  //following code shows game score data
  fill(255, 223, 0);
  rect(30, 20, 200, 95, 7);
  textSize(24);
  fill(0);
  text("Total Points: " + totalGameScore, 50, 75);

  fill(255, 223, 0);
  rect(450, 20, 140, 45);
  fill(0);
  text("Stress: " + stressScore, 460, 50);

  fill(255, 223, 0);
  rect(650, 20, 140, 45);
  fill(0);
  text("Wealth: " + wealthScore, 660, 50);

  fill(255, 223, 0);
  rect(850, 20, 170, 45);
  fill(0);
  text("Happiness: " + happinessScore, 850, 50);

  fill(255, 223, 0);
  rect(1050, 20, 140, 45);
  fill(0);
  text("Grades: " + gradesScore, 1060, 50);
}



void keyPressed() {

  //key funtions, could maybe be done more modularly
  
  //screen 1
  if (key == '1') {
    choice += "1";
  }
  if (key == '2') {
    choice += "2";
  }
  if (key == '3') {
    choice += "3";
  }
  if (key == '4') {
    choice += "4";
  }
  if (key == '5') {
    choice += "5";
  }
  if (key == '6') {
    choice += "6";
  }
  if (key == '7') {
    choice += "7";
  }
  if (key == '8') {
    choice += "8";
  }
  if (key == '9') {
    choice += "9";
  }
  if (key == '0') {
    choice += "0";
  }

  //screen 2
  if (press2 == true) {
    if (key == '1') {
      choice2 += "1";
    }
    if (key == '2') {
      choice2 += "2";
    }
    if (key == '3') {
      choice2 += "3";
    }
    if (key == '4') {
      choice2 += "4";
    }
    if (key == '5') {
      choice2 += "5";
    }
    if (key == '6') {
      choice2 += "6";
    }
    if (key == '7') {
      choice2 += "7";
    }
    if (key == '8') {
      choice2 += "8";
    }
    if (key == '9') {
      choice2 += "9";
    }
    if (key == '0') {
      choice2 += "0";
    }
  }
      //screen 3
      if (pressNo1 == true) {
    if (key == '1') {
      choice3 += "1";
    }
    if (key == '2') {
      choice3 += "2";
    }
    if (key == '3') {
      choice3 += "3";
    }
    if (key == '4') {
      choice3 += "4";
    }
    if (key == '5') {
      choice3 += "5";
    }
    if (key == '6') {
      choice3 += "6";
    }
    if (key == '7') {
      choice3 += "7";
    }
    if (key == '8') {
      choice3 += "8";
    }
    if (key == '9') {
      choice3 += "9";
    }
    if (key == '0') {
      choice3 += "0";
    }
  }
}
