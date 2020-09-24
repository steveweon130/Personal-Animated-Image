//Steve Weon
//Block 1-2a
//Sept 22, 2020
//Personal Animated Image


// Explanation ==============================================================================================================================================

//This is a type of trolling in the game "Among us" called the "Vent show"
//It's basically trolling the crewmates when the imposter has assured win and show off.
//Think of it like you are using full 12 battlecruisor yamato canon to kill only 1 enemy zergling to show off.
//That's how vent show feels like. So good to you and so bad for the opponent.
//This is what I do in any games: trolling rather than playing normally.
//I think that tells a lot about my "personality"






// START OF THE CODE ========================================================================================================================================



//Minim
  import ddf.minim.*;
  import ddf.minim.analysis.*;
  import ddf.minim.effects.*;
  import ddf.minim.signals.*;
  import ddf.minim.spi.*;
  import ddf.minim.ugens.*;
  
  Minim minim;
  AudioPlayer Vent; //https://www.youtube.com/watch?v=D1i3kYWriUM
  AudioPlayer Alarm; //https://www.youtube.com/watch?v=Pc-99lSRNfg + Extended
  AudioPlayer Classic; //https://www.youtube.com/watch?v=Kw0wLLVEMaA



// INT =======================================================================================================================================================

int imposter1Y, imposter1VY, imposter1Ang; 
int YellowCrewX, YellowCrewAng;
int MesX;
int userY, userVY;
int vent;
int Sabotage;

PFont arial;
PFont arialsmall;



void setup() { // SETUP =======================================================================================================================================
    
  //Size
    size(800,600, P2D);
    
  //Font
    arial = createFont("arial.ttf", 62);
    arialsmall = createFont("arial.ttf", 30);

  //Imposter
    imageMode(CENTER);
    imposter1Y = 1500;
    imposter1VY = -5;
    imposter1Ang = 0;

  //Yellow Crewmate
    YellowCrewX = -400;
    YellowCrewAng = 0;

  //Not An Imposter Message
    MesX = -800;

  //Username
    userY = 1250;
    userVY = -5;
  
  //Vent Counter
    vent = 580;
  
  //Sabotage Counter
    Sabotage = 0;
  
  //Music
    minim = new Minim(this);
    Vent = minim.loadFile("Vent.mp3");
    Alarm = minim.loadFile("Alarm.mp3");
    Classic = minim.loadFile("Classic.mp3");
  
  //Playing Sabotage Alarm Sound
    Alarm.play();
    Alarm.setGain(-10);
  
  //Playing Classical Music
    Classic.play();
}



void draw() { //DRAW ==========================================================================================================================================
  
  //BACKGROUND
    //Floor
      background(203, 203, 193);
    
    //Red Part of the Window
      fill(139,67,87);
      rect(0, 0, 800, 310);
      
    //Window & Space
      fill(0);
      rect(10, 20, 180, 240);
      rect(210, 20, 180, 240);
      rect(410, 20, 180, 240);
      rect(610, 20, 180, 240);
      
    //Stars outside
      //Small Stars (1px)
        fill(255);
        stroke(255);
        strokeWeight(0);
        ellipse(103,199,1,1);
        ellipse(228,73,1,1);
        ellipse(135,156,1,1);
        ellipse(244,154,1,1);
        ellipse(133,87,1,1); 
        ellipse(43,240,1,1);
        ellipse(54,59,1,1);
        ellipse(331,189,1,1);
        ellipse(281,231,1,1);
        ellipse(61,219,1,1);
        ellipse(371,219,1,1);
        ellipse(43,103,1,1);
        ellipse(48,93,1,1);
        ellipse(489,210,1,1);
        ellipse(504,84,1,1);
        ellipse(550,185,1,1);
        ellipse(556,248,1,1);
        ellipse(103,199,1,1);
        ellipse(491,161,1,1);
        ellipse(641,81,1,1);
        ellipse(720,153,1,1);
        ellipse(645,40,1,1);
        ellipse(718,131,1,1);
        ellipse(665,152,1,1);
      
      //Larger Stars (2px)
        ellipse(212,91,2,2);
        ellipse(98,170,2,2);
        ellipse(139,239,2,2);
        ellipse(241,104,2,2);
        ellipse(324,186,2,2);
        ellipse(364,229,2,2);
        ellipse(139,239,2,2);
        ellipse(329,66,2,2);
        ellipse(363,133,2,2);
        ellipse(452,67,2,2);
        ellipse(525,217,2,2);
        ellipse(571,232,2,2);
        ellipse(513,145,2,2);
        ellipse(642,92,2,2);
        ellipse(719,237,2,2);
        ellipse(740,87,2,2);
        ellipse(760,115,2,2);
        
      //Largest Stars (3px)
        ellipse(104,102,3,3);
        ellipse(148,175,3,3);
        ellipse(78,242,3,3);
        ellipse(40,130,3,3);        
        ellipse(333,74,3,3);
        ellipse(370,205,3,3);
        ellipse(305,244,3,3);
        ellipse(241,104,3,3);
        ellipse(581,90,3,3);
        ellipse(467,103,3,3);
        ellipse(516,196,3,3);
        ellipse(504,131,3,3);
        ellipse(702,152,3,3);
        ellipse(643,40,3,3);
        ellipse(734,224,3,3);
        ellipse(685,179,3,3);
  
  
  
  //YELLOW CREWMATE BRING EJECTED
    //Yellow Crewmate Placement
      YellowCrew(YellowCrewX, 140, YellowCrewAng);
    
    //Yellow Crewmate Moving Left to Right
      YellowCrewX = YellowCrewX + 8;
      
    //Yellow Crewmate Spinning
      YellowCrewAng = YellowCrewAng + 2;
    
    //Yellow Crewmate Right Limit
      if (YellowCrewX > 2400) {
        YellowCrewX = -400;
      }
      
      
      
  //NOT THE IMPOSTER MESSAGE  
    //First Message Design
      textAlign(CENTER, CENTER);
      textFont(arialsmall);
      
    //First Message Outline
      fill(0);
      text("Yellow was not An Imposter", MesX-3, 140);
      text("Yellow was not An Imposter", MesX, 140-3);
      text("Yellow was not An Imposter", MesX+3, 140);
      text("Yellow was not An Imposter", MesX, 140+3);
      
    //First Message Itself
      fill(255);
      text("Yellow was not An Imposter", MesX, 140);
    
    //Second Message Outline
      fill(0);
      text("1 Imposter remains", MesX-3, 175);
      text("1 Imposter remains", MesX, 175-3);
      text("1 Imposter remains", MesX+3, 175);
      text("1 Imposter remains", MesX, 175+3);
   
    //Second Message Itself
      fill(255);
      text("1 Imposter remains", MesX, 175);
      
    //Message Moving Right
      MesX = MesX + 8;
      
    //Message Right Limit
      if (MesX > 2400) {
        MesX = -400;
      }
      
      
      
  //BACKGROUND - WINDOW FRAME
    //Vertical Frames
      fill(31,77,92);
      rect(0, 0, 10, 280);
      rect(190, 0, 20, 280);
      rect(390, 0, 20, 280);
      rect(590, 0, 20, 280);
      rect(790, 0, 10, 280);
      
    //Horizontal Frames
      rect(0, 0, 800, 20);
      rect(0, 260, 800, 20);
    
    
    
  //VENT
    //vent Counter
      vent = vent + 5;
     
    //vent Open/Close
      //Closed Vent
        if (vent < 1200) {
          strokeWeight(10);
          stroke(0);
          fill(127, 142, 144);
          rect(80, 495, 440, 100, 50);
      //Vent Design       
          strokeWeight(0);
          fill(0);
          rect(120, 512, 360, 5);
          rect(120, 522, 360, 5);
          rect(120, 532, 360, 5);
          rect(120, 542, 360, 5);
          rect(120, 552, 360, 5);
          rect(120, 562, 360, 5);
          rect(120, 572, 360, 5);
        }
        
      //Open Vent & playing Vent Sound Effect
        if (vent > 1200) {
          Vent.play();
          strokeWeight(10);
          stroke(0);
          fill(0);
          rect(80, 495, 440, 100, 50);
          Vent.rewind();
        }
      
    //Vent Counter Reset
      if (vent == 2400) {
        vent = 0;
      }
  
  
  
  //MY USERNAME
    //Username Design
      textSize(62);
      textAlign(CENTER, CENTER);
      textFont(arial);
    
    //Username Outline
      fill(0);
      text("Steve", 300-3, userY);
      text("Steve", 300, userY-3);
      text("Steve", 300+3, userY);
      text("Steve", 300, userY+3);
    
    //Username Itself
      fill(255,0,0);
      text("Steve", 300, userY);
    
    //Username Moving Up and Down
      userY = userY + userVY;
    
    //Username Upper Limit
      if (userY < 50) {
        userVY = 5;
      }
      
    //Username Lower Limit
      if (userY > 1250) {
        userVY = -5;
      }
  
  
  
  //CREWMATES
    //Green Crewmate Placement
      GreenCrew(1000, 1000);
    
    //Cyan Crewmate Placement
      CyanCrew(1000, 1000);
  
  
  
  //IMPOSTER
    //Imposter Placement
      imposter(300, imposter1Y, imposter1Ang);
  
    //Imposter Moving Up & Down
      imposter1Y = imposter1Y + imposter1VY;
    
    //Imposter Spinning
      imposter1Ang = imposter1Ang + 1;
    
    //Imposter Upper Limit
      if (imposter1Y < 300) {
        imposter1VY = 5;
      }
    
    //Imposter Lower Limit
      if (imposter1Y > 1500) {
        imposter1VY = -5;
      }
  
  
  
  //SABOTAGE ALARM
    //Sabotage Alarm Counter
      Sabotage = Sabotage + 1;
    
    //Sabotage Alarm Screen
      //Red Alarm
      if (Sabotage < 25) {
        strokeWeight(0);
        stroke(255, 0, 0, 60);
        fill(255, 0, 0, 60);
        rect(0, 0, 800, 600);
      }
      
    //Normal
      if (Sabotage > 25) {
      strokeWeight(0);
      stroke(255, 0, 0, 0);
      fill(255, 0, 0, 0);
      rect(0, 0, 800, 600);
      }
      
    //Sabotage Alarm Counter Reset
      if (Sabotage == 50) { 
      Sabotage = 0;
      }  
  }



void GreenCrew(int xG, int yG) { // GREEN CREWMATE DESIGN =====================================================================================================================

  //backpack
  fill(27,141,79);
  strokeWeight(5);
  stroke(0);
  rect(-20+550, -110+300, 100, 100);
  
  //body
  ellipse(0+550, -100+300, 100, 100);
  rect(-50+550, -100+300, 100, 100);
  
  //legs
  ellipse(-30+550, 0+300, 40, 100);
  ellipse(30+550, 0+300, 40, 100);
  
  //cover
  strokeWeight(5);
  stroke(27,141,79);
  rect(-45+550, -100+300, 90, 95);
  
  //Glass
  strokeWeight(5);
  stroke(0);
  fill(74, 100, 109);
  ellipse(-25+550, -100+300, 80, 50);
  
  strokeWeight(0);
  stroke(148, 201, 219);
  fill(148, 201, 219);
  ellipse(-30+550, -100+300, 65, 40);
  
  strokeWeight(0);
  stroke(255);
  fill(255);
  ellipse(-35+550, -110+300, 30, 15);
}



void CyanCrew(int xC, int yC) { //CYAN CREWMATE DESIGN ========================================================================================================================================

  //backpack
  fill(56,254,220);
  strokeWeight(5);
  stroke(0);
  rect(-20+700, -110+300, 100, 100);
  
  //body
  ellipse(0+700, -100+300, 100, 100);
  rect(-50+700, -100+300, 100, 100);
  
  //legs
  ellipse(-30+700, 0+300, 40, 100);
  ellipse(30+700, 0+300, 40, 100);
  
  //cover
  strokeWeight(5);
  stroke(56,254,220);
  rect(-45+700, -100+300, 90, 95);
  
  //Glass
  strokeWeight(5);
  stroke(0);
  fill(74, 100, 109);
  ellipse(-25+700, -100+300, 80, 50);
  
  strokeWeight(0);
  stroke(148, 201, 219);
  fill(148, 201, 219);
  ellipse(-30+700, -100+300, 65, 40);
  
  strokeWeight(0);
  stroke(255);
  fill(255);
  ellipse(-35+700, -110+300, 30, 15);
}



void YellowCrew(int xY, int yY, int angleY) { //YELLOW CREWMATE DESIGN ========================================================================================================================================

  pushMatrix();
  translate(xY,yY);
  
  //Yellow Crewmate Rotation
    rotate(radians(angleY));

  //backpack
  fill(163,163,10);
  strokeWeight(5);
  stroke(0);
  rect(-20, -110+60, 100, 100);
  
  //body
  ellipse(0, -100+60, 100, 100);
  rect(-50, -100+60, 100, 100);
  
  //legs
  ellipse(-30, 0+60, 40, 100);
  ellipse(30, 0+60, 40, 100);
  
  //cover
  strokeWeight(5);
  stroke(163,163,10);
  rect(-45, -100+60, 90, 95);
  
  //Glass
  strokeWeight(5);
  stroke(0);
  fill(74, 100, 109);
  ellipse(-25, -100+60, 80, 50);
  
  strokeWeight(0);
  stroke(148, 201, 219);
  fill(148, 201, 219);
  ellipse(-30, -100+60, 65, 40);
  
  strokeWeight(0);
  stroke(255);
  fill(255);
  ellipse(-35, -110+60, 30, 15);
  popMatrix();
}



void imposter(int x, int y, int angle) { //IMPOSTER DESIGN ========================================================================================================================================
  
  pushMatrix();
  translate(x,y);
  
  //Imposter Rotation
    rotate(radians(angle));

  //backpack
  fill(255, 0, 0);
  strokeWeight(10);
  stroke(0);
  rect(-160, -110, 200, 200);
  
  //body
  ellipse(0, -100, 200, 200);
  rect(-100, -100, 200, 200);
  
  //legs
  ellipse(-60, 100, 80, 200);
  ellipse(60, 100, 80, 200);
  
  //cover
  strokeWeight(10);
  stroke(255,0,0);
  rect(-90, -110, 180, 200);
  
  //Glass
  strokeWeight(10);
  stroke(0);
  fill(74, 100, 109);
  ellipse(50, -100, 160, 100);
  
  strokeWeight(0);
  stroke(148, 201, 219);
  fill(148, 201, 219);
  ellipse(60, -100, 130, 80);
  
  strokeWeight(0);
  stroke(255);
  fill(255);
  ellipse(70, -110, 60, 30);
  
  popMatrix();
}



// END OF THE CODE =============================================================================================================================================
