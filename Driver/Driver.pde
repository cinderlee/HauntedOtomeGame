boolean startScreen = true;
boolean animation = false;
boolean game = false;
boolean dialogue = true;
boolean lose = false;
int counter = 0;
int loveP= 0;
int selected;
DiaTree meh;
DiaTreeNode curr;
String currD;

PImage title;

PImage imgdream;
PImage imgdreamy;
PImage imgroom;
PImage imgroombad;
PImage imgwalk;
PImage imgwalkhappy;
PImage imgpark;
PImage imgbench;
PImage imgbumperyou;
PImage imgbumperMary;
PImage imgmirror;
PImage imgmirrornormal;
PImage imgmirrorface;
PImage imgwheel;
PImage imgwheelsunset;
PImage imghaunted;
PImage imginhaunted;
PImage imghauntedhand;
PImage imghauntedface;
PImage imghauntedwhere;
PImage imghauntedladder;
PImage imgend;
PImage imgcompleteend;
PImage imgendbad;
PImage imgendbadbad;
PImage imgwalkaway;
PImage imgwalkaway2;
PImage imgblack;
PImage imgcredit;

///////////////////////
int addP;
char[] symbol={'*','+','-','/'};
int level;
String eqtn;
boolean qAnswered;
boolean gotEqtn;
boolean gameFinished;
float ans1;
float ans2;
float ans3;
PImage miniF;
PImage miniS;
PImage miniO;
PImage miniB;

/////////////////////////////

import ddf.minim.*;
Minim minim;
AudioPlayer[] player = new AudioPlayer[16];

////////////////////////////
int numFrames = 7;  
int currentFrame = 0;
PImage[] images = new PImage[numFrames];

int num = 5;
int curry = 0;
PImage [] ladder = new PImage [num];

  void setup () {
    background(0);
    size(700, 850);
    meh = new DiaTree();
    meh.setTree();
    curr = meh.root; 
    currD = curr.getLink().get(0);
    counter = 0;
    title=loadImage("titlescreen.png");
    imgdream = loadImage ("nightmare3.png");
    imgdreamy = loadImage ("nightmare2.png");
    imgroom = loadImage ("comp-lab.png");
    imgroombad = loadImage ("comp-lab3.png");
    imgwalk = loadImage ("walkSad.png");
    imgwalkhappy = loadImage ("walkHappy.png");
    imgpark = loadImage ("rollercoaster.jpg");
    imgbench = loadImage ("bench.png");
    imgbumperyou = loadImage ("rollercoasterYou.png");
    imgbumperMary = loadImage ("rollercoasterMary.png");
    imgmirror = loadImage ("mirrorhouseMary.png");
    imgmirrornormal = loadImage ("mirrorhouseNormal.png");
    imgmirrorface = loadImage ("mirrorhouseHorror.png");
    imgwheel = loadImage ("ferriswheel.png");
    imgwheelsunset = loadImage ("ferriswheelSunset.png");
    imghaunted = loadImage ("hauntedhouse.png");
    imginhaunted = loadImage ("inHauntedHouse.png");
    imghauntedhand = loadImage ("inHauntedHoldingHands.png");
    imghauntedface = loadImage ("inHauntedHouseHorror.png");
    imghauntedwhere = loadImage ("inHauntedHouseWhereAreYou.png");
    imghauntedladder = loadImage ("inHauntedLadder.png");
    imgend = loadImage ("perfectEnding.png");
    imgcompleteend = loadImage ("perfectEndingHorror.png");
    imgendbad = loadImage ("notPerfectEnding.png");
    imgendbadbad= loadImage ("notPerfectEndingBeforeAnime.png");
    imgwalkaway = loadImage ("notPerfectEndingWalkAway1.png");
    imgwalkaway2 = loadImage ("notPerfectEndingWalkAway2.png");
    imgblack = loadImage ("faint.png");
    imgcredit = loadImage ("credit.png");
    
   
    images[0]  = loadImage("notPerfectEndingAnime1.jpg");
    images[1]  = loadImage("notPerfectEndingAnime2.jpg"); 
    images[2]  = loadImage("notPerfectEndingAnime3.jpg");
    images[3]  = loadImage("notPerfectEndingAnime4.jpg"); 
    images[4]  = loadImage("notPerfectEndingAnime5.jpg");
    images[5]  = loadImage("notPerfectEndingAnime6.jpg"); 
    images[6]  = loadImage("notPerfectEndingAnime7.jpg"); 
  
    ladder [0] = loadImage ("ladder1.png");
    ladder [1] = loadImage ("ladder2.png");
    ladder [2] = loadImage ("ladder3.png");
    ladder [3] = loadImage ("ladder4.png");
    ladder [4] = loadImage ("ladder5.png");
    

    ///////////////////////
    
    minim = new Minim(this);
    player[0] = minim.loadFile("Dream.mp3");
    player[1] = minim.loadFile("Room.mp3");
    player[2] = minim.loadFile("Walk.mp3");
    player[3] = minim.loadFile("Amusement.mp3");
    player[4] = minim.loadFile("QuietSlumberEx.mp3");
    player[5] = minim.loadFile("Ferris.mp3");
    player[6] = minim.loadFile("Bell.mp3");
    player[7] = minim.loadFile("Haunted.mp3");
    player[8] = minim.loadFile("GoodEnd.mp3");
    player[9] = minim.loadFile("BadEnd.mp3");
    player[10] = minim.loadFile("BadEndA.mp3");
    player[11] = minim.loadFile("GoodEndA.mp3");
    player[12] = minim.loadFile("Hahaha.mp3");
    player[13] = minim.loadFile("Ladder.mp3");
    player[14] = minim.loadFile("Roar.mp3");
    player[15] = minim.loadFile("Mirror.mp3");
    
    ///////////////////////
     level=1;
    addP=0; 
    eqtn="";
    qAnswered=false;
    ans1=0.0;
    ans2=0.0;
    ans3=0.0;
    gotEqtn=false;
    miniF=loadImage("minigameFail.png");
    miniS=loadImage("minigameSuccess.png");
    miniO=loadImage("minigameOk.png");
    miniB=loadImage("minib.png");
    gameFinished=false;
  }
 
 
  //this determines the different routes that occur depending on the choice 
  void mouseClicked(){
    if (( curr.equals (meh.roomy))&&(curr.dialogue.back.getData().equals (currD))){
      if (mouseY >=200 && mouseY <= 300) {
          curr = meh.roomB;
          currD = meh.roomB.getLink().get(0);
          counter = 0;
       }
       if (mouseY >= 400 && mouseY <=500) {
          curr = meh.roomG;
          currD = meh.roomG.getLink().get(0);
          loveP++;
          counter = 0;
       } 
    }
    if ((curr.dialogue.back.getData().equals (currD)) && (curr.equals(meh.walky))) {  
       if (mouseY >=200 && mouseY <= 300) {
          curr = meh.walkB;
          currD = meh.walkB.getLink().get(0);
          counter = 0;
        }
        if (mouseY >= 400 && mouseY <=500) {
          curr = meh.walkG;
          currD = meh.walkG.getLink().get(0);
          loveP++;
          counter = 0;
        } 
    }
    
    if ((curr.dialogue.back.getData().equals (currD)) &&(curr.equals (meh.roomB))){
        if (mouseY >=200 && mouseY <= 300) {
          curr = meh.roomBB;
          counter = 0;
        }
        if (mouseY >= 400 && mouseY <=500) {
          curr = meh.roomBG;
          currD = meh.roomBG.getLink().get(0);
          counter = 0;
        } 
    }
    
    //insert minigame
    if ((curr.dialogue.back.getData().equals (currD)) && (curr.equals(meh.roomC))) {
      game=true;
    }
    
    if ((curr.dialogue.back.getData().equals (currD)) && (curr.equals (meh.parky))) {
        if (mouseY >=200 && mouseY <= 300) {
          curr = meh.parkB;
          counter = 0;
        }
        if (mouseY >= 400 && mouseY <=500) {
          curr = meh.parkG;
          currD = meh.parkG.getLink().get(0);
          loveP++;
          counter = 0;
        } 
      }
      
 
    if ((curr.equals(meh.hauntedHouse))&&(curr.dialogue.back.getData().equals (currD))) {
        if (mouseY >=200 && mouseY <= 300) {
          curr = meh.hauntedB;
          counter = 0;
        }
        if (mouseY >= 400 && mouseY <=500) {
          curr = meh.hauntedG;
          currD = meh.hauntedG.getLink().get(0);
          loveP++;
          counter = 0;
        } 
    }

  }
  
  String display(String l){
    PFont f = createFont ("ariel", 20, true);
    textFont (f, 20);
    fill (0);
    textLeading (20);
    text (l, 20, 620);
    println (l);
    return l;
  }
    
    

  
  void draw() {
     image(title, 0,0, 700, 850);
     myDelay(900);
     if (lose == true) {
       background (0);
       image (imgcredit, 700, 850);
     }
   if (currD.equals("..") && curr == meh.root) {
      background(0);
      image (title, 0,0, 700, 850);
      player[0].play();
    }
    if (!currD.equals("..") && curr == meh.root) {
      background(0);
      image (imgdream, 0,0, 700, 850);
    }
    if (currD.equals("You: *turns around*") && curr.equals(meh.root) ) {
      background(0);
      player[14].play();
      image (imgdreamy, 0,0, 700, 850);
    }
    if (curr.equals( meh.roomy) || curr.equals (meh.roomBG)) {
      image (imgroom, 0,0, 700, 850);
      player[0].close();
      player[14].close();
      player[1].play();
    }
    if (curr == ( meh.roomG)) {
       image (imgroom, 0,0, 700, 850);
    }
    if (curr == (meh.roomGC)){
      image (imgroom,0, 0, 700, 850);
    }
    if (curr == (meh.roomC)) {
      image(imgroom, 0, 0, 700, 850);
    }
    if (curr.equals (meh.roomB) || curr.equals (meh.roomBB)) {
      image (imgroombad, 0,0, 700, 850);
    }
    if (curr.equals (meh.roomAfter)) {
      image (imgroom, 0,0, 700, 850);
      player[6].play();
    }
    
    if (curr == meh.walky) {
      image (imgwalk, 0, 0, 700,850);
      player[1].close();
      player[6].close();
      player[2].play();
    }
    
    if (curr == meh.walkB) {
      image (imgwalk, 0, 0, 700,850);
    }
    
    if (curr == meh.walkG) {
      image (imgwalkhappy, 0,0, 700, 850);
    }
    
     if (curr == meh.parky || curr ==meh.parkB || curr == meh.parkG) {
      image (imgpark, 0,0, 700, 850);
      player[2].close();
      player[3].play();
    }
    if (curr == meh.parkC){
      image (imgbench, 0, 0, 700, 850);
    }
    
    if (curr == meh.bumpery) {
      image (imgbumperyou, 0, 0, 700, 850);
       if (currD.equals(meh.bumpery.getLink().get(0))) {
         image (imgbumperMary, 0, 0, 700, 850);
       }
       if (currD.equals (meh.bumpery.getLink().get(1))){
         image (imgbumperyou, 0, 0, 700, 850);
       }
       if (currD.equals ( meh.bumpery.getLink().get(4))) {
         image (imgbumperMary, 0, 0, 700, 850);
       }
    }
     if (curr == meh.mirrorHouse) {
      image (imgmirror, 0,0, 700, 850);
      player[3].close();
      player[4].play();
    
     if (currD.equals(meh.mirrorHouse.getLink().get(1))) {
      image (imgmirrornormal, 0,0, 700, 850);
    }
      if (currD .equals( meh.mirrorHouse.getLink().get(2))){
        player[15].play();
        image (imgmirrorface, 0,0, 700, 850);
      }
      if (currD.equals (meh.mirrorHouse.getLink().get(3))) {
      image (imgmirror, 0,0, 700, 850);
      }
      if (currD.equals (meh.mirrorHouse.getLink().get(4))){
        player[15].close();
        image (imgmirrornormal, 0,0, 700, 850);
      }
      if (currD.equals (meh.mirrorHouse.getLink().get(5))){
        image (imgmirror, 0,0, 700, 850);
      }
      if (currD.equals (meh.mirrorHouse.getLink().get(6))){
        image (imgmirrornormal, 0,0, 700, 850);
      }
      if (currD.equals (meh.mirrorHouse.getLink().get(7))){
        image (imgmirror, 0,0, 700, 850);
      }
    }
    
    if (curr == meh.ferris) {
      image (imgwheel, 0,0, 700, 850);
      player[4].close();
      player[5].play();
      if (currD == meh.ferris.getLink().get(1) || currD == meh.ferris.getLink().get(2)
      || currD == meh.ferris.getLink().get(3) || currD == meh.ferris.getLink().get(4) 
      || currD == meh.ferris.getLink().get(5)) {
        image (imgwheelsunset, 0, 0, 700, 850);
      }
      if (currD == meh.ferris.getLink().get(5)) {
        image (imgwheel, 0, 0, 700, 850);
      }
    }
      if (curr == meh.hauntedHouse) {
      image (imghaunted, 0, 0, 700, 850);
    }
    if (currD.equals (meh.hauntedHouse.getLink().get(2))){
        image (imginhaunted,0, 0, 700, 850);
    }
    
    if (curr == meh.hauntedG) {
      image (imginhaunted, 0, 0, 700, 850);
    }
     if (curr == meh.hauntedC) {
      player[5].close();
      player[7].play();
      image (imghauntedwhere, 0, 0,  700, 850);
      if (currD == meh.hauntedC.getLink().get(5)){
         player[12].play();
        image (imghauntedface, 0,0,700,850);
      }
      if (currD==meh.hauntedC.getLink().get(6)||currD==meh.hauntedC.getLink().get(7) ){
        image (imghauntedladder, 0,0, 700, 850);
        player[13].play();
      }
     }
     if (curr == meh.hauntedC && (currD.equals(meh.hauntedC.getLink().get(8)))){
        image (ladder[0], 0,0, 700, 850);
      }
     if (curr == meh.hauntedC && (currD.equals(meh.hauntedC.getLink().get(9)))){
        image (ladder[2], 0,0, 700, 850);
      }
     if (curr == meh.hauntedC && (currD.equals(meh.hauntedC.getLink().get(10)))){
        image (ladder[4], 0,0, 700, 850);
      }
       if (curr == meh.hauntedC && (currD.equals (meh.hauntedC.getLink().get(11)))){
        background (0);
      }
    
    if (curr == meh.hauntedB) {
      image (imghauntedhand, 0, 0, 700, 850);
    }
    
    if (curr == meh.endG) {
      image (imgend, 0,0, 700, 850);
      player[7].close();
      player[12].close();
      player[13].close();
      player[8].play();
    }
      if (currD == meh.endG.getLink().get(3)){
        player[11].play();
        image (imgcompleteend, 0, 0, 700, 850);
        frameRate (3);
     }
     
      if (currD == meh.endG.getLink().back.getData()) {
        frameRate (1);
        image (imgcredit, 0, 0, 700, 850);
      }
      
    if (curr == meh.endB) {
      image (imgendbad, 0,0, 700, 850);
      player[9].play();
      if (currD == meh.endB.getLink().get(1)) {
        image(imgwalkaway, 0, 0, 700, 850);
         player[10].play();
      }
      if (currD == meh.endB.getLink().get(2)){
        image(imgwalkaway2, 0, 0, 700, 850);
      }
      if (currD == meh.endB.getLink().get(3)||currD == meh.endB.getLink().get(4)) {
        image (imgendbadbad, 0, 0, 700, 850);
      }
      if (currD == meh.endB.getLink().get(5)) {
        image (images[0], 0, 0, 700, 850);
      }
      if (currD == meh.endB.getLink().get(6)) {
        image (images[3], 0, 0, 700, 850);
      }
      if (currD == meh.endB.getLink().get(7)) {
        image (images[4], 0, 0, 700, 850);
      }
       if (currD == meh.endB.getLink().get(8)) {
        image (images[6], 0, 0, 700, 850);
      }
       if (currD == meh.endB.getLink().get(9)) {
        image (imgcredit, 0, 0, 700, 850);
      }
    }
    
    if (counter < (curr.dialogue.size())) {
      frameRate (0.4);
      currD = curr.dialogue.get(counter);
      display (currD);
      counter++;
      frameRate (0.4);
    }
    
     if (( curr.equals (meh.root) && (meh.root.dialogue.back.getData().equals (currD)))){
      curr = meh.roomy;
      counter = 0;
      frameRate (0.4);
     }
     if (( curr.equals (meh.roomy))&&(meh.roomy.dialogue.back.getData().equals (currD))){
 
      fill (255);
      rect (100, 200, 500, 100);
      fill (255);
      rect (100, 400, 500, 100);
      PFont f = createFont ("ariel", 20, true);
      textFont (f, 20);
      fill (0);
      text ("" + meh.roomB.getLink().get(0), 150, 250);
      PFont g = createFont ("ariel", 20, true) ;   
      textFont (g, 20);
      fill (0);
      text ("" + meh.roomG.getLink().get(0), 150, 450);
      frameRate (0.2);
     }
   
   if (( curr.equals (meh.roomB))&&(meh.roomB.dialogue.back.getData().equals (currD))){
 
      fill (255);
      rect (100, 200, 500, 100);
      fill (255);
      rect (100, 400, 500, 100);
      PFont f = createFont ("ariel", 20, true);
      textFont (f, 20);
      fill (0);
      text ("" + meh.roomBB.getLink().get(0), 150, 250);
      PFont g = createFont ("ariel", 20, true) ;   
      textFont (g, 20);
      fill (0);
      text ("" + meh.roomBG.getLink().get(0), 150, 450);
      frameRate (0.2);
     }
     
     if ((curr.equals (meh.roomBB)) && (curr.dialogue.back.getData().equals (currD))){
      fill (255);
      rect (100, 200, 500, 100);
       PFont g = createFont ("ariel", 20, true) ;   
        textFont (g, 20);
        fill (0);
       text ("YOU LOSE FOR NOT CHOOSING BETTER ", 150, 250);
       lose = true;
     } 
   if ((curr.equals (meh.roomG)) && (curr.dialogue.back.getData().equals (currD))){
      curr = meh.roomGC;
      counter = 0;
    }
     if ((curr.equals (meh.roomBG)) && (curr.dialogue.back.getData().equals (currD))){
      curr = meh.roomC;
      counter = 0;
     }
    if ((curr.equals (meh.roomGC)) && (curr.dialogue.back.getData().equals (currD))){
      curr = meh.roomC;
      counter = 0;
    }
  
    if ((curr.equals (meh.roomC)) && (curr.dialogue.back.getData().equals (currD))){
      game = true;
    }

    /////////////////////////
    if(game){
      if(level<6){
          image(miniB, 0,0,700,850);  
          if(!gotEqtn){
          getEqtn();
          setChoice();
          gotEqtn=true;
          }
      }
    
  
  fill(0);
  textSize(50);
  text("Level "+level, 200,100);
  textSize(15);
  text("Correct: "+addP+"/"+5, 200,150);
  
  fill(178, 102, 255);
  textSize(25);
  text("Choose the letter with the correct answer to the question", 5,200);
  
  fill(0, 102, 153);
  textSize(40);
  text("Question: "+eqtn, 100,300);
 
  fill(255, 102, 102);
  textSize(25);
  text("A. "+ans1, 200,350);
  
  fill(255, 128, 0);
  textSize(25);
  text("B. "+ans2, 200,400);
  
  fill(0, 204, 0);
  textSize(25);
  text("C. "+ans3, 200,450);
  }
  
  if(level==5 && qAnswered){
     if (addP==5){
       image(miniS, 0,0,700,850);
       loveP++;
     }
     if(addP>2 && addP<5){
       image(miniO,0,0,700,850);
     }
     if(addP<3 && addP>-1){
       image(miniF,0,0,700,850);
       loveP=0;
     }
     gameFinished=true;
  }
  
  if(gameFinished){
    game=false;
    curr = meh.roomAfter;
    counter = 0;
    level = 0;
    qAnswered =false;
    gameFinished = false;
  }
      
    if ((curr.equals (meh.roomAfter)) && (curr.dialogue.back.getData().equals (currD))){
      curr = meh.walky;
      counter = 0;
    }
    
     
    if ((curr.dialogue.back.getData().equals (currD)) && (curr.equals(meh.walky))) {
      fill (255);
      rect (100, 200, 500, 100);
      fill (255);
      rect (100, 400, 500, 100);
      PFont f = createFont ("ariel", 20, true);
      textFont (f, 20);
        fill (0);
        text ("" + meh.walkB.getLink().get(0), 150, 250);
        PFont g = createFont ("ariel", 20, true);
        textFont (g, 20);
        fill (0);
        text ("" + meh.walkG.getLink().get(0), 150, 450);
    }
    if ((curr.equals (meh.walkB)) && (curr.dialogue.back.getData().equals (currD))){
      curr = meh.parky;
      counter = 0;
    }
    if ((curr.equals (meh.walkG)) && (curr.dialogue.back.getData().equals (currD))){
      curr = meh.parky;
      counter = 0;
    }
  
    if ((curr.equals (meh.parky)) && (curr.dialogue.back.getData().equals (currD))) {
      fill (255);
      rect (100, 200, 500, 100);
      fill (255);
      rect (100, 400, 500, 100);
      PFont f = createFont ("ariel", 20, true);
        textFont (f, 20);
        fill (0);
        text ("" + meh.parkB.getLink().get(0), 150, 250);
        PFont g = createFont ("ariel", 20, true);
        textFont (g, 20);
        fill (0);
        text ("" + meh.parkG.getLink().get(0), 150, 450);
      }
  
  if ((curr.equals (meh.parkG)) && (curr.dialogue.back.getData().equals (currD))){
      curr = meh.parkC;
      counter = 0;
    }
  if ((curr.equals (meh.parkB)) && (curr.dialogue.back.getData().equals (currD))){
      curr = meh.parkC;
      counter = 0;
    }
    
    if ((curr.equals (meh.parkC)) && (curr.dialogue.back.getData().equals (currD))){
      curr = meh.bumpery;
      counter = 0;
    } 
    if ((curr.equals (meh.bumpery)) && (curr.dialogue.back.getData().equals (currD))){
      curr = meh.mirrorHouse;
      counter = 0;
    }
   
    if ((curr.equals (meh.mirrorHouse)) && (curr.dialogue.back.getData().equals (currD))){
      curr = meh.ferris;
      counter = 0;
    }
    
    if ((curr.equals (meh.ferris)) && (curr.dialogue.back.getData().equals (currD))){
      curr = meh.hauntedHouse;
      counter = 0;
    }
 if ((curr.equals(meh.hauntedHouse))&&(curr.dialogue.back.getData().equals (currD))) {
      fill (255);
      rect (100, 200, 500, 100);
      fill (255);
      rect (100, 400, 500, 100);
    PFont f = createFont ("ariel", 20, true);
        textFont (f, 20);
        fill (0);
        text ("" + meh.hauntedB.getLink().get(0), 150, 250);
        PFont g = createFont ("ariel", 20, true);
        textFont (g, 20);
        fill (0);
        text ("" + meh.hauntedG.getLink().get(0), 150, 450);
        frameRate (0.2);
   }
   
  if ((curr.equals (meh.hauntedG)) && (curr.dialogue.back.getData().equals (currD))){
      curr = meh.hauntedC;
      counter = 0;
    }
    
     if ((curr.equals (meh.hauntedB)) && (curr.dialogue.back.getData().equals (currD))){
      curr = meh.hauntedC;
      counter = 0;
    }
    /*
    if (curr == meh.hauntedC && currD==meh.hauntedC.getLink().get(8)){
      image (ladder[0],0,0);
      frameRate (0.5);
      image (ladder[1],0,0);
      frameRate (0.5);
      image (ladder[2],0,0);
      frameRate (0.5);
      image (ladder[3],0,0);
      frameRate (0.5);
      image (ladder[4],0,0);
      frameRate (0.5);
      //image (imgblack, 0,0, 700, 850);
    }*/
  
  
      //     ladder1 = loadImage ("ladder1.png");;
  //   ladder2= loadImage ("ladder3.png");;
  //   ladder3= loadImage ("ladder5.png");;
   
    if ((curr.equals (meh.hauntedC)) && (curr.dialogue.back.getData().equals (currD))){
      if (loveP >= 5) {
        curr = meh.endG;
        counter= 0;
      }
      else {
        curr = meh.endB;
        counter = 0;
      }
    }
    
    /*
    if (curr == meh.endB && currD==meh.endB.getLink().get (4)){
      dialogue = false;
      
      currentFrame = (currentFrame+1) % numFrames;  // Use % to cycle through frames
      int offset = 0;
      animation = true;
      if (animation) {
        for (int x = 0; x < 6; x++) { 
          image(images[(currentFrame+offset) % numFrames], 0, 0);
          offset+=1;
          frameRate (6);
        }
      }
      animation = false;
      //image (imgcredit, 0,0, 700, 850);
    }*/
    if (dialogue == false && (curr == meh.endB && currD==meh.endB.getLink().get (4))) {
      image (imgcredit, 0,0, 700, 850);
     }
     }
  ////////////////////
   void myDelay(int ms)
{
   try
  {    
    Thread.sleep(ms);
  }
  catch(Exception e){}
}
  //////////////////
  void keyPressed(){
   if(qAnswered){
    if(key == 'a' || key == 'A' || key == 'c' || key == 'C'||key == 'b' || key == 'B'){
      fill(0, 102, 153);
      textSize(25);
      text("You already chose, press the right arrow key to continue.", 5,600);//textAlign()
    }
    if(keyCode == RIGHT && qAnswered) {
    level++;
    eqtn="";
    qAnswered=false;
    gotEqtn=false;
    image(miniB, 0,0,700,850);
    }
  }
  
  if(!qAnswered){
    fill(0, 204, 204);
    textSize(25);
   if (level==1){
      if (key == 'b' || key == 'B'){
        text("Correct. Press the right arrow key to continue.", 100,500); 
        addP++;
        qAnswered=true;
      }
      if (key == 'a' || key == 'A' || key == 'c' || key == 'C'){
        text("Wrong. Press the right arrow key to continue.", 100,500); 
        qAnswered=true;
      }
   }
   if (level==2){
      if (key == 'a' || key == 'A'){
        text("Correct. Press the right arrow key to continue.", 100,500); 
        addP++;
        qAnswered=true;
      }
      if(key == 'c' || key == 'C'||key == 'b' || key == 'B'){ 
        text("Wrong. Press the right arrow key to continue.", 100,500); 
        qAnswered=true;
      }
   }
   if (level==3){
      if (key == 'a' || key == 'A'){
        text("Correct. Press the right arrow key to continue.", 100,500); 
        addP++;
        qAnswered=true;
      }
       if(key == 'c' || key == 'C'||key == 'b' || key == 'B'){ 
        text("Wrong. Press the right arrow key to continue.", 100,500); 
        qAnswered=true;
      }
   }
   if (level==4){
      if (key == 'b' || key == 'B'){
        text("Correct. Press the right arrow key to continue.", 100,500); 
        addP++;
        qAnswered=true;
      }
      if (key == 'a' || key == 'A' || key == 'c' || key == 'C'){
        text("Wrong. Press the right arrow key to continue.", 100,500); 
        qAnswered=true;
      }
   }
   if (level==5){
      if (key == 'c' || key == 'C'){
        text("Correct. Press the right arrow key to continue.", 100,500); 
        addP++;
        qAnswered=true;
      }
        if (key == 'a' || key == 'A' || key == 'b' || key == 'B'){
        text("Wrong. Press the right arrow key to continue.", 100,500); 
        qAnswered=true;
      }
   }
  }
  
 
}

void getEqtn(){
    
    if (level==1){
      // int index=int(random(symbol.length));
       eqtn = ""+ (int)random(1,9);
       eqtn+=""+symbol[int(random(symbol.length))];
       eqtn+=""+(int)random(1,9);
    }
    if(level==2){
      eqtn = ""+ (int)random(1,9);
      eqtn+=""+symbol[int(random(symbol.length))];
      eqtn+=""+(int)random(1,9);
      eqtn+=""+symbol[int(random(symbol.length))];
      eqtn+=""+(int)random(1,9);
    }
    if(level==3){
      eqtn = "" + (int)random(1,9);
      eqtn+=""+symbol[int(random(symbol.length))];
      eqtn+=""+(int)random(1,9);
       eqtn+=""+symbol[int(random(symbol.length))];
      eqtn+=""+(int)random(1,9);
       eqtn+=""+symbol[int(random(symbol.length))];
      eqtn+=""+(int)random(1,9);

    }
    if(level==4){
      eqtn = ""+ (int)random(1,9);
      eqtn+=""+symbol[int(random(symbol.length))];
      eqtn+=""+(int)random(1,9);
      eqtn+=""+symbol[int(random(symbol.length))];
      eqtn+=""+(int)random(1,9);
       eqtn+=""+symbol[int(random(symbol.length))];
      eqtn+=""+(int)random(1,9);

    }
    if(level==5){
      eqtn = "" +(int)random(1,9);
      eqtn+=""+symbol[int(random(symbol.length))];
      eqtn+=""+(int)random(1,9);
      eqtn+=""+symbol[int(random(symbol.length))];
      eqtn+=""+(int)random(1,9);
      eqtn+=""+symbol[int(random(symbol.length))];
      eqtn+=""+(int)random(1,9);

    }
  }


boolean isOperator( char c  ) {
    return c == '-' || c == '+' || c == '*' || c == '/';
    }

 String toPostfix(String infix)
      {
         int priority = 0;
         String postfix= "";
 
         LStack s1 = new LStack();
 
         for (int i = 0; i < infix.length(); i++)
         {
            char ch = infix.charAt(i);
            if (ch == '+' || ch == '-' || ch == '*' || ch == '/')
            {
               if (s1.size() <= 0)
                  s1.push(ch);
               else
               {
                  Character chTop = (Character) s1.peek();
                  if (chTop == '*' || chTop == '/')
                     priority = 1;
                  else
                     priority = 0;
                  if (priority == 1)
                  {
                     if (ch == '+' || ch == '-')
                     {
                        postfix += s1.pop();
                        i--;
                     }
                     else
                     { 
                        postfix += s1.pop();
                        i--;
                     }
                  }
                  else
                  {
                     if (ch == '+' || ch == '-')
                     {
                        postfix += s1.pop();
                        s1.push(ch);
                     }
                     else
                        s1.push(ch);
                  }
               }
            }
            else
            {
               postfix += ch;
            }
         }
         int len = s1.size();
         for (int j = 0; j < len; j++)
            postfix += s1.pop();
         return postfix;
      }
    

float evaluate( float b, float a, char operator ) {
  if ( operator == '+' )
      return a + b;
  else if ( operator == '-' )
      return a - b;
  else if ( operator == '*' )
      return a * b;
  else
      return a / b;
    }
  
float calculate( String postfix ) {
  LStackD values = new LStackD();
  for (int i = 0; i < postfix.length (); i++) {
      if (isOperator(postfix.charAt (i)) == false) {
    values.push ((float) (postfix.charAt (i) - '0'));
      }
      else if (isOperator (postfix.charAt (i)) == true) {
    char hi = postfix.charAt (i);
    float first = values.pop();
    float second = values.peek();
    values.pop();
    float e = evaluate (first, second, hi);
    values.push (e);
      }
  }
  return values.pop();
    }

void setChoice(){
  String s = eqtn;
  String tempEqtn= toPostfix(s);
 // System.out.println( s );
 // System.out.println( tempEqtn );
  float temp=calculate(tempEqtn);
 //System.out.println(temp);

  if (level==1){
    ans1=temp+1;
    ans2=temp;
    ans3=temp+2;
  }
  if(level==2){
    ans1=temp;
    ans2=temp+1;
    ans3=temp+2;
  }
  if(level==3){
    ans1=temp;
    ans2=temp+1;
    ans3=temp+2;
  }
  if(level==4){
    ans1=temp+1;
    ans2=temp;
    ans3=temp+2;
  }
  if(level==5){
    ans1=temp+1;
    ans2=temp+2;
    ans3=temp;
  }
}
  


