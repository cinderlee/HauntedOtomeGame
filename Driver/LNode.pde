class LNode {
    
  String data;
  LNode next;

  LNode ( String  d ) {
    data = d;
  }
    
  String toString() {
    return "" + data;
  }
   
  void setData( String c ) {
    data = c;
  }
    
  void setNext( LNode n ) {
    next = n;
  }
  
  String getData() {
    return data;
  }
    
  LNode getNext() {
    return next;
  }    
}

