boolean startScreen = true;
boolean animation = false;
boolean game = false;
int counter = 0;
int loveP= 0;
int selected;
DiaTree meh;
DiaTreeNode curr;
LNode currD;
PImage imgdream;
PImage imgdreamy
PImage imgroom;
PImage imgroombad;
PImage imgwalk;
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
    curr = root; 
    currD = curr.dialogue.get(0);
    counter = 0;
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
    imginhaunted = loadImage ("inHaunedHouse.png");
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
    
    images[6]  = loadImage("notPerfectEndingAnime1.png");
    images[0]  = loadImage("notPerfectEndingAnime2.png"); 
    images[1]  = loadImage("notPerfectEndingAnime3.png");
    images[2]  = loadImage("notPerfectEndingAnime4.png"); 
    images[3]  = loadImage("notPerfectEndingAnime5.png");
    images[4]  = loadImage("notPerfectEndingAnime6.png"); 
    images[5]  = loadImage("notPerfectEndingAnime7.png"); 
  
    ladder [4] = loadImage ("ladder1.png");
    ladder [0] = loadImage ("ladder2.png");
    ladder [1] = loadImage ("ladder3.png");
    ladder [2] = loadImage ("ladder4.png");
    ladder [3] = loadImage ("ladder5.png");
    
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
    if (curr.dialogue.get(counter+1) != null) {
      display(currD);
      counter++;
      currD = curr.dialogue.get(counter);
    }
    if ((curr.dialogue.get(counter+1)==null) && ( curr == meh.room)){
      display(currD);
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
      text ("" + meh.roomG.getLink().get(0), 150, 250);
      if (mouseY >=200 && mouseY <= 300) {
          curr = meh.roomB;
          counter = 0;
       }
       if (mouseY >= 400 && mouseY <=500) {
          curr = meh.roomG;
          loveP++;
          counter = 0;
       } 
    }
    if ((curr.dialogue.get(counter+1)==null) &&(curr == meh. roomB)){
        display(currD);
        PFont f = createFont ("ariel", 20, true);
        textFont (f, 20);
        fill (0);
        text ("" + meh.roomBB.getLink().get(0), 150, 250);
        PFont g = createFont ("ariel", 20, true);
        textFont (g, 20);
        fill (0);
        text ("" + meh.roomBG.getLink().get(0), 150, 250);
        if (mouseY >=200 && mouseY <= 300) {
          curr = meh.roomBB;
          counter = 0;
        }
        if (mouseY >= 400 && mouseY <=500) {
          curr = meh.roomBG;
          counter = 0;
        } 
    }
    if ((curr.dialogue.get(counter+1)==null) && (curr == meh.roomBG || curr == meh.roomGC)) {
      curr = meh.roomC;
    }
    
    //insert minigame
    if ((curr.dialogue.get(counter+1) == null) && (curr ==meh.roomc)) {
      game=true;
    }
    if (gameFinished) {
      curr = meh.roomAfter;
      counter = 0;
    }
    if (curr.dialogue.getNext() ==null && curr == meh.roomAfter) {
      curr = meh.walky;
      counter = 0;
    }
    
    if (curr.dialogue.getNext() ==null && curr == meh.walky) {
      display(currD);
      PFont f = createFont ("ariel", 20, true);
      textFont (f, 20);
        fill (0);
        text ("" + meh.walkB.getLink().get(0), 150, 250);
        PFont g = createFont ("ariel", 20, true);
        textFont (g, 20);
        fill (0);
        text ("" + meh.walkG.getLink().get(0), 150, 250);
        if (mouseY >=200 && mouseY <= 300) {
          curr = meh.walkB;
          counter = 0;
        }
        if (mouseY >= 400 && mouseY <=500) {
          curr = meh.walkG;
          loveP++;
          counter = 0;
        } 
    }
    if (curr.dialogue.getNext().equals(null) && curr == meh.parky) {
      display(currD);
      PFont f = createFont ("ariel", 20, true);
        textFont (f, 20);
        fill (0);
        text ("" + meh.parkB.getLink().get(0), 150, 250);
        PFont g = createFont ("ariel", 20, true);
        textFont (g, 20);
        fill (0);
        text ("" + meh.parkG.getLink().get(0), 150, 250);
        if (mouseY >=200 && mouseY <= 300) {
          curr = meh.parkB;
          counter = 0;
        }
        if (mouseY >= 400 && mouseY <=500) {
          curr = meh.parkG;
          loveP++;
          counter = 0;
        } 
      }
       if ((curr.dialogue.get(counter+1)==null) && (curr == meh.parkB || curr == meh.parkC)) {
          curr = meh.bumpery;
          counter = 0;
    }
    
    if ((curr.dialogue.get(counter+1)==null) && (curr == meh.bumpery)) {
      curr = meh.mirrorHouse;
      counter = 0;
    }
     if ((curr.dialogue.get(counter+1)==null) && (curr == meh.mirrorHouse)) {
      curr = meh.ferris;
      counter=0;
    }
     if ((curr.dialogue.get(counter+1)==null) && (curr == ferris)) {
      curr = meh.hauntedHouse;
      counter = 0;
    }
    if (curr.dialogue.getNext().equals(null) && curr == meh.hauntedHouse) {
       display(currD);
      PFont f = createFont ("ariel", 20, true);
        textFont (f, 20);
        fill (0);
        text ("" + meh.hauntedB.getLink().get(0), 150, 250);
        PFont g = createFont ("ariel", 20, true);
        textFont (g, 20);
        fill (0);
        text ("" + meh.hauntedG.getLink().get(0), 150, 250);
        if (mouseY >=200 && mouseY <= 300) {
          curr = meh.hauntedB;
          counter = 0;
        }
        if (mouseY >= 400 && mouseY <=500) {
          curr = meh.hauntedG;
          loveP++;
          counter = 0;
        } 
    }
     if ((curr.dialogue.get(counter+1)==null) && (curr == meh.hauntedB || curr == meh.hauntedG)) {
      curr = meh.hauntedC;
      counter = 0;
    }
     if ((curr.dialogue.get(counter+1)==null) && (curr == meh.hauntedC)) {
      if (loveP >= 5) {
        curr = meh.endG;
        counter= 0;
      }
      else {
        curr = meh.endB;
        counter = 0;
      }
    }
  }
  
  void display(LNode l){
    PFont f = createFont ("ariel", 20, true);
    textFont (f, 20);
    fill (0);
    text ("" + l.getData(), 20, 600);
  }
     
  void draw() {
    if (curr == meh.root) {
      image (imgdream, 0,0, 700, 850);
    }
    if (curr == meh.root && currD.equals ("You: ...")) {
      frameRate (6);
      fill (0);
      frameRate (6);
      image (imgdreamy, 0,0, 700, 850);
    }
    if (curr == meh.roomy || curr == meh.roomG || curr == meh.roomBG || curr == meh.roomAfter) {
      image (imgroom, 0,0, 700, 850);
    }
    if (curr == meh.roomB || curr == meh.roomBB) {
      image (imgroombad, 0,0, 700, 850);
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
  
  if(level==5 && qAnswered && gameFinished)
    game=false;



    if (curr == meh.walky || curr == meh.walkB) {
      image (imgwalk, 0, 0, 700,850);
    }
    if (curr == meh.walkG) {
      image (imgwalkHappy, 0,0, 700, 850);
    }
    if (curr == meh.parky || curr ==meh.parkB || curr == meh.parkG || curr == meh.parkC) {
      image (imgpark, 0,0, 700, 850);
    }
    if (curr == meh.parkC && currD==meh.parkC.getLink().get(0)){
      image (imgbench, 0, 0, 700, 850);
    }
    if (curr == meh.bumpery) {
      image (imgbumperyou, 0, 0, 700, 850);
       if (currD==meh.bumpery.getLink().get(1)) {
         image (imgbumperMary, 0, 0, 700, 850);
       }
       if (currD == meh.bumpery.getLink().get(2)){
         image (imgbumperyou, 0, 0, 700, 850);
       }
       if (currD == meh.bumpery.getLink().get(5)) {
         image (imgbumperMary, 0, 0, 700, 850);
       }
    }
    if (curr == meh.mirrorHouse) {
      image (imgmirror, 0,0, 700, 850);
    }
    if (curr == meh.mirrorHouse && currD.equals ("...")) {
      image (imgmirrornormal, 0,0, 700, 850);
      if (currD == meh.mirrorHouse.getLink().get(3)){
        image (imgmirrorface, 0,0, 700, 850);
      }
      if (currD==meh.mirrorHouse.getLink().get(4)) {
      image (imgmirror, 0,0, 700, 850);
      }
      if (currD==meh.mirrorHouse.getLink().get(5)){
        image (imgmirrornormal, 0,0, 700, 850);
      }
      if (currD==meh.mirrorHouse.getLink().get(6)){
        image (imgmirror, 0,0, 700, 850);
      }
      if (currD==meh.mirrorHouse.getLink().get(7)){
        image (imgmirrornormal, 0,0, 700, 850);
      }
      if (currD==meh.mirrorHouse.getLink().get(8)){
        image (imgmirror, 0,0, 700, 850);
      }
    }
    if (curr == meh.ferris) {
      image (imgwheel, 0,0, 700, 850);
      if (currD == meh.ferris.getLink().get(2)) {
        image (imgwheelsunset, 0, 0, 700, 850);
      }
      if (currD == meh.ferris.getLink().get(6)) {
        image (imgwheel, 0, 0, 700, 850);
      }
    }
    if (curr == meh.hauntedHouse ||curr == meh.hauntedG) {
      image (imghaunted, 0,0, 700, 850);
      if (curr == meh.hauntedHouse) {
        if (currD == meh.hauntedHouse.getLink().get(2)){
          image(imginhaunted, 0, 0, 700, 850);
        }
      }
    }
    if (curr == meh.hauntedC) {
      image (imghauntedwhere, 0, 0,  700, 850);
      if (currD == meh.hauntedC.getLink().get(5)){
        image (imghauntedface, 0,0,700,850);
      }
      if (currD==meh.hauntedC.getLink().get(6)){
        image (imghauntedladder, 0,0, 700, 850);
      }
    }
    if (curr == meh.hauntedB) {
      image (imginhauntedhand, 0, 0, 700, 850);
    }
    if (curr == meh.hauntedB) {
      image (imghauntedbad, 0,0, 700, 850);
    }
    if (curr == meh.endG) {
      image (imgend, 0,0, 700, 850);
      if (currD == meh.endG.getLink().get(3)){
        image (imgcompleteend, 0, 0, 700, 850);
        frameRate (3);
        image (imagecredit, 0, 0, 700, 850);
      }
    }
    if (curr == meh.endB) {
      image (imgendbad, 0,0, 700, 850);
      if (currD == meh.endB.getLink().get(1)) {
        image(imgwalkaway, 0, 0, 700, 850);
      }
      if (currD == meh.endB.getLink().get(2)){
        image(imgwalkaway2, 0, 0, 700, 850);
      }
      if (currD == meh.endB.getLink().get(3)) {
        image (imgendbadbad, 0, 0, 700, 850);
      }
    }
    if (curr == meh.hauntedC && currD==meh.hauntedC.getLink().get(8)){
      background (0);
      curry = (curry+1)%num;
      int off = 0;
      animation = true;
      if (animation) {
        for (int y = 0; y <4; y++){
          image (ladder[(curry+off)%num], 0, 0);
          off+=1;
          frameRate(3);
        }
      }
      animation = false;
      image (imgblack, 0,0, 700, 850);
    }
    if (curr == meh.endB && currD==meh.endB.getLink().get (4)){
      background (0);
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
      image (imgcredit, 0,0, 700, 850);
    }
  }
  
  //////////////////
  void keyPressed(){
   if(qAnswered){
    if(key == 'a' || key == 'A' || key == 'c' || key == 'C'||key == 'b' || key == 'B'){
      fill(0, 102, 153);
      textSize(25);
      text("You already chose, click the right arrow key to continue.", 5,600);//textAlign()
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
        text("Correct. Click the right arrow key to continue.", 100,500); 
        addP++;
        qAnswered=true;
      }
      if (key == 'a' || key == 'A' || key == 'c' || key == 'C'){
        text("Wrong. Click the right arrow key to continue.", 100,500); 
        qAnswered=true;
      }
   }
   if (level==2){
      if (key == 'a' || key == 'A'){
        text("Correct. Click the right arrow key to continue.", 100,500); 
        addP++;
        qAnswered=true;
      }
      if(key == 'c' || key == 'C'||key == 'b' || key == 'B'){ 
        text("Wrong. Click the right arrow key to continue.", 100,500); 
        qAnswered=true;
      }
   }
   if (level==3){
      if (key == 'a' || key == 'A'){
        text("Correct. Click the right arrow key to continue.", 100,500); 
        addP++;
        qAnswered=true;
      }
       if(key == 'c' || key == 'C'||key == 'b' || key == 'B'){ 
        text("Wrong. Click the right arrow key to continue.", 100,500); 
        qAnswered=true;
      }
   }
   if (level==4){
      if (key == 'b' || key == 'B'){
        text("Correct. Click the right arrow key to continue.", 100,500); 
        addP++;
        qAnswered=true;
      }
      if (key == 'a' || key == 'A' || key == 'c' || key == 'C'){
        text("Wrong. Click the right arrow key to continue.", 100,500); 
        qAnswered=true;
      }
   }
   if (level==5){
      if (key == 'c' || key == 'C'){
        text("Correct. Click the right arrow key to continue.", 100,500); 
        addP++;
        qAnswered=true;
      }
        if (key == 'a' || key == 'A' || key == 'b' || key == 'B'){
        text("Wrong. Click the right arrow key to continue.", 100,500); 
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
   
int getPriority( char op ) {
    if ( op == '-' || op == '+')
        return 1;
    else
        return 2;  
    }
    
String toPostfix( String infix ) {
 LStack temp = new LStack();
  String postFix = "";
  
  for (int i = 0; i < infix.length (); i++ ) {
      char hi = infix.charAt (i);
      if ((!isOperator(hi)) && (hi!= ' ')) { 
    postFix = postFix + hi;
      }
      else{
    if (temp.isEmpty()==true) {
        temp.push (hi);
    }
    else {
        while (temp.isEmpty()== false) {
      if (getPriority (temp.peek()) > getPriority (hi)){
          postFix = postFix + temp.peek();
          temp.pop();
      }
      else{
          break;
      }
        }
        temp.push (hi);
    }
      }
  }
  while (!temp.isEmpty()) {
      postFix = postFix + temp.peek();
      temp.pop();
  }
  return postFix;
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
  System.out.println( s );
  System.out.println( tempEqtn );
  float temp=calculate(tempEqtn);
  System.out.println(temp);

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
  
