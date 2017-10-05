class DiaTree {
  
  DiaTreeNode root;
  LinkedList dream;
  LinkedList room;
  LinkedList roomBad;
  LinkedList roomGood; 
  LinkedList roomBadBad;
  LinkedList roomBadGood;
  LinkedList roomCont;
  LinkedList roomAfterGame;
  LinkedList roomGoodCont;
  LinkedList walk;
  LinkedList walkGood;
  LinkedList walkBad;
  LinkedList park;
  LinkedList parkBad;
  LinkedList parkGood;
  LinkedList parkCont;
  LinkedList bumper;
  LinkedList mirror;
  LinkedList wheel;
  LinkedList haunted;
  LinkedList hauntedBad;
  LinkedList hauntedGood;
  LinkedList hauntedCont;
  LinkedList endBad;
  LinkedList endGood;
  
   DiaTreeNode roomy;
   DiaTreeNode roomB;
   DiaTreeNode roomG;
   DiaTreeNode roomGC ;
   DiaTreeNode roomC;
   DiaTreeNode roomBB ;
   DiaTreeNode roomBG;
   DiaTreeNode roomAfter;
   DiaTreeNode walky;
   DiaTreeNode walkB; 
   DiaTreeNode walkG; 
   DiaTreeNode parky;  
   DiaTreeNode parkB;  
   DiaTreeNode parkG;  
   DiaTreeNode parkC; 
   DiaTreeNode bumpery;
   DiaTreeNode mirrorHouse;
   DiaTreeNode ferris;
   DiaTreeNode hauntedHouse;
   DiaTreeNode hauntedB; 
   DiaTreeNode hauntedG; 
   DiaTreeNode hauntedC;
   DiaTreeNode endG; 
   DiaTreeNode endB; 
   
  DiaTree () {
    root = null;
    dream = new LinkedList();
    room = new LinkedList();
    roomBad = new LinkedList ();
    roomGood = new LinkedList ();
    roomGoodCont = new LinkedList();
    roomCont = new LinkedList();
    roomBadBad = new LinkedList();
    roomBadGood = new LinkedList ();
    roomAfterGame = new LinkedList();
    park = new LinkedList();
    parkBad = new LinkedList();
    parkGood = new LinkedList();
    parkCont = new LinkedList();
    walk = new LinkedList();
    walkBad = new LinkedList();
    walkGood = new LinkedList();
    bumper = new LinkedList ();
    mirror = new LinkedList();
    wheel = new LinkedList ();
    haunted = new LinkedList();
    hauntedBad = new LinkedList();
    hauntedGood = new LinkedList();
    hauntedCont = new LinkedList();
    endBad = new LinkedList();
    endGood = new LinkedList();
  }
  
  void setDream() {
     dream.add ("..");
     dream.add (".");
    dream.add ("Mary: Hey where are you?");
    dream.add ("You: I’m in front of you.");
    dream.add ("Mary: No where are you?");
    dream.add ("You: Im holding your hand.");
    dream.add ("You: *turns around*");
    dream.add ("You:AHHH!!");
  }
  
  void setRoom() {
    room.add ("You: ...");
    room.add ("Mary: Are you okay?");
    room.add ("You: Where am I?");
    room.add ("Mary: What are you talking about? We’re in computer science class.");
    room.add ("You: Oh right. I think I just had a nightmare");
    room.add ("Mary:  Are you okay? I was going to ask you to go to the amusement \n park with me. ...But if you’re not feeling ok...");
    roomBad.add ("You:  I'm really tired...");
    roomBad.add ("Mary:  Oh, but it will be fun! \n Besides...I need someone dependable...I’m scared of one of the rides.");
    roomBadBad.add ("You:  Oh, hell nah, girlie \n * I'm also scared of rides *");
    roomBadGood.add ("You:  Fine, I'll go.");
    roomGood.add ("You: I'd love to go.");
    roomGoodCont.add ("Mary:  Really?");
    roomCont.add ("Mary: Great! But let’s finish the do now first.");
    roomCont.add ("You:  Okay. What’s the do now?");
    roomCont.add ("Mary:  Answer the infix notation.");
    roomCont.add ("You:  Oh, ok!"); 
    roomAfterGame.add ("Mary:  Yay! We finished!");
    roomAfterGame.add (" *Bell rings* ");
    roomAfterGame.add (" Mary:  Let's go! It's going to be so much fun!");
  }
  
  void setWalk() {
    walk.add ("Mary:  Ouch, my feet are hurting.");
    walk.add ("You:  ... ") ;
    walk.add ("Mary:  Can we rest for a while?");
    walkBad.add ("You:  Come on let's go, we're almost there.");
    walkBad.add ("Mary:  Okay... :( ");
    walkGood.add ("You:  Get on my back, I'll piggyback you.");
    walkGood.add ("Mary:  Is it okay?");
    walkGood.add ("You:  Yeah, it's fine.");
    walkGood.add ("Mary:  Thank you so much.");
  }
  
  void setPark() {
    park.add ("Mary:  Let's go on the rollercoaster!");
    parkBad.add ("You:  Hey, let's not do that...");
    parkGood.add ("You:  YEAH! LET'S GO! *Got to appear brave...*");
    parkGood.add ("You:  *throws up*");
    parkCont.add ("A few minutes later on a bench nearby...");
    parkCont.add ("You:  Ugh, I feel sick");
    parkCont.add ("Mary:  Here, put your head on my lap and close your eyes. \n It might help.");
    parkCont.add ("You:  * This is so nice and comfortable...*");
  }
  
  void setBumper(){
    bumper.add ("You: Oh, what the hell..Ow...");
    bumper.add ("Mary: Do your best, have fun!");
    bumper.add ("You: *How did I even get here...Ugh, my head still hurts... \n I should avoid other people or else I might get sick again.*");
    bumper.add ("...");
    bumper.add ("You: I feel sick again....Ugh, I keep getting hit by someone.");
    bumper.add ("Mary: LOL, you're really bad at this, it's funny * and lame. *");
  }
  
  void setMirror(){
    mirror.add ("Mary: Let's go into the mirror house.");
    mirror.add ("You:  *This should be better than that rollercoaster...* Yeah, let's go.");
    mirror.add ("...");
    mirror.add ("You:  Oh my god...AHHHHH");
    mirror.add ("Mary:  What happened?");
    mirror.add ("You:  ...Nevermind, it must have been my imagination.");
    mirror.add ("Mary:  Are you sure? You're sweating a lot...");
    mirror.add ("You:  Yeah, don't worry about it. I'm just a bit tired.");
    mirror.add ("Mary:  Okay, let's leave then.");
  }
  
  void setWheel () {
    wheel.add ("Mary:  Do you want to go on the ferris wheel? \n I've never ridden it before.");
    wheel.add ("You:  Sure!");
    wheel.add ("Mary:  We can see everything up here! The sunset is so beautiful.");
    wheel.add ("You:  *mumbles* But you're a lot prettier.");
    wheel.add ("Mary:  Thank you...");
    wheel.add ("...");
    wheel.add ("Mary:  Thanks so much for coming with me today. I really enjoyed it.");
    wheel.add ("You:  Oh no problem. It’s still kind of early, \n we can go on one more ride if you want.");
  }
  
  void setHaunted(){
    haunted.add ("Mary:  Oh let’s go to the haunted house then.");
    haunted.add ("You:  (Oh,no..) Sure...let's go!");
    haunted.add ("Creaks.....");
    haunted.add ("Mary:  I’m scared");
    hauntedBad.add ("You hold her hand.");
    hauntedBad.add("Mary:  Ew, sweaty hands. I'll hold your shirt instead.");
    hauntedGood.add ("You hug her.");
    hauntedGood.add ("Mary:  I feel more secure now! I'll hold onto your shirt now.");
    hauntedCont.add ("Mary:  Hey where are you?"); 
    hauntedCont.add ("You:  I’m in front of you.");
    hauntedCont.add ("Mary:  No where are you?");
    hauntedCont.add ("You:  You’re holding onto my shirt aren’t you?"); 
    hauntedCont.add ("You feel a cold arm creeping around your neck.");
    hauntedCont.add ("*turns around*");
    hauntedCont.add ("You:  AHHHHHH!!!!");
    hauntedCont.add ("Mary:  Where are you? Why did you leave me? I’m climbing up now.");
    hauntedCont.add ("You look down.");
    hauntedCont.add ("You: ...");
    hauntedCont.add ("You: ....");
    hauntedCont.add ("You: .....");
    hauntedCont.add ("You: ......");
  }
  
  void setEnding (){
    endBad.add ("You:  * Ouch my head, I fainted. What happened today? \n I don't remember anything...*  Ugh, let's go home.");
    endBad.add ("...");
    endBad.add ("....");
    endBad.add ("Mary:  DON'T LEAVE ME!!!");
    endBad.add ("You: Huh?");
    endBad.add (".");
    endBad.add ("..");
    endBad.add (".........");
    endBad.add ("...............");
    endBad.add ("........................");
    endGood.add ("Mary:  Are you okay? You fainted at the haunted house.");
    endGood.add ("You:  Umm, wow. I hope you don’t think bad of me.");
    endGood.add ("Mary:  Oh no. of course not. I had lots of fun today! Let's go again tomorrow!");
    endGood.add ("You: * Oh crap...*");
    endGood.add ("......");
  }
  
  void setTree (){
    setDream();
    setRoom();
    roomy = new DiaTreeNode (room);
    roomB = new DiaTreeNode (roomBad);
    roomG = new DiaTreeNode (roomGood);
    roomGC = new DiaTreeNode (roomGoodCont);
    roomC = new DiaTreeNode (roomCont);
    roomBB = new DiaTreeNode (roomBadBad);
    roomBG = new DiaTreeNode (roomBadGood);
    roomAfter = new DiaTreeNode (roomAfterGame);
    setWalk();
    walky = new DiaTreeNode (walk);
    walkB = new DiaTreeNode (walkBad);
    walkG = new DiaTreeNode (walkGood);
    setPark();
    parky = new DiaTreeNode (park);
    parkB = new DiaTreeNode (parkBad);
    parkG = new DiaTreeNode (parkGood);
    parkC = new DiaTreeNode (parkCont);
    setBumper();
    bumpery= new DiaTreeNode (bumper);
    setMirror();
    mirrorHouse = new DiaTreeNode (mirror);
    setWheel();
    ferris = new DiaTreeNode (wheel);
    setHaunted();
    hauntedHouse = new DiaTreeNode (haunted);
    hauntedB = new DiaTreeNode (hauntedBad);
    hauntedG = new DiaTreeNode (hauntedGood);
    hauntedC = new DiaTreeNode (hauntedCont);
    setEnding();
    endG = new DiaTreeNode (endGood);
    endB = new DiaTreeNode (endBad);
    root= new DiaTreeNode(dream);
    root.setHeight (0);
    root.setNormal (roomy);
    roomy.setHeight (1);
    roomy.setBad (roomB);
    roomy.setGood (roomG);
    roomB.setHeight (2);
    roomG.setHeight (2);
    roomB.setBad (roomBB);
    roomB.setGood (roomBG);
    roomG.setNormal (roomGC);
    roomBB.setHeight (3);
    roomBG.setHeight (3);
    roomGC.setHeight (3);
    roomBG.setNormal (roomC);
    roomGC.setNormal (roomC);
    roomC.setHeight (4);
    roomC.setNormal (roomAfter);
    roomAfter.setHeight (5);
    roomAfter.setNormal (walky);
    walky.setHeight (6);
    walky.setBad (walkB);
    walky.setGood (walkG);
    walkB.setHeight (7);
    walkG.setHeight (7);
    walkB.setNormal (parky);
    walkG.setNormal (parky);
    parky.setHeight (8);
    parky.setBad (parkB);
    parky.setGood (parkG);
    parkB.setHeight (9);
    parkG.setHeight (9);
    parkB.setNormal (parkC);
    parkG.setNormal (parkC);
    parkC.setHeight (10);
    parkC.setNormal (bumpery);
    bumpery.setHeight (11);
    bumpery.setNormal (mirrorHouse);
    mirrorHouse.setHeight(12);
    mirrorHouse.setNormal(ferris);
    ferris.setHeight (13);
    ferris.setNormal (hauntedHouse);
    hauntedHouse.setHeight (14);
    hauntedHouse.setBad (hauntedB);
    hauntedHouse.setGood(hauntedG);
    hauntedB.setHeight (15);
    hauntedG.setHeight (15);
    hauntedB.setNormal (hauntedC);
    hauntedG.setNormal (hauntedC);
    hauntedC.setHeight(16);
    hauntedC.setBad (endB);
    hauntedC.setGood (endG);
    endB.setHeight (17);
    endG.setHeight (17);
  }
} 
  



