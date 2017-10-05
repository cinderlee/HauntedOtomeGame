class DiaTreeNode  {
 
  DiaTreeNode bad; 
  DiaTreeNode normal;
  DiaTreeNode good; 
  LinkedList dialogue;
  int hi;
  
  DiaTreeNode (LinkedList i) {
    bad = normal = good = null;
    dialogue = i;
  }
  
  void setLink (LinkedList itself) {
    dialogue = itself;
  }
  
  LinkedList getLink () {
    return dialogue;
  }
    
  void setBad (DiaTreeNode baddy) {
    bad = baddy; 
  }
  
  void setNormal (DiaTreeNode normally) {
    normal = normally;
  }
  
  void setGood (DiaTreeNode goody) {
    good = goody;
  }
  
  DiaTreeNode getBad () {
    return bad;
  }
  
  DiaTreeNode getNormal () {
    return normal;
  }
  
  DiaTreeNode getGood () {
    return good;
  }
  
  void setHeight (int x ) {
    hi = x;
  }
}

