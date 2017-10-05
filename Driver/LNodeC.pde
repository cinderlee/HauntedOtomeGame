 class LNodeC {
    
     char data;
     LNodeC next;

     LNodeC( char d ) {
  data = d;
    }
     String toString() {
  return "" + data;
    }
     void setData( char c ) {
  data = c;
    }
     void setNext( LNodeC n ) {
  next = n;
    }
     char getData() {
  return data;
    }
     LNodeC getNext() {
  return next;
    }    
}

