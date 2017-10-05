class LinkedList  {

 LNode front;
 LNode back;
 int size;
  
    
  LinkedList() {
    front = back = null;
  }

  String toString() {
    String s = "";
    LNode curr = front;
  
    while ( curr != null ) {
      s+= curr.getData() + " ";
      curr = curr.getNext();
    }
    return s;  
  }

  void add( String c ) {
    
    LNode n = new LNode( c );
    size++;
  
    if ( size == 1 )
      front = back = n;

    else {
      back.setNext( n );
      back = back.getNext();
    }
  }

  void add( String c, int i ) throws IndexOutOfBoundsException {
    
    if ( i > size || i < 0 )
      throw new IndexOutOfBoundsException();
  
    LNode n = new LNode( c );
    LNode curr = front;

    size++;  

    if ( curr == null ) {
      front = back = n;
      return;
    }

    if ( i == 0 ) {      
      n.setNext( front );
      front = n;
      if ( size == 1 )
        back = n;
      return;
    }

    if ( i == size - 1 ) {
      size--;
      add( c );
      return;
    }
        
    while ( i > 1 ) {
      curr = curr.getNext();
      i--;
    }

    n.setNext( curr.getNext() );
    curr.setNext( n );
  }
    
  String set( String c, int i ) throws IndexOutOfBoundsException {
          
    if ( i >= size || i < 0 )
      throw new IndexOutOfBoundsException();

    LNode curr = front;
    String old;
  
    if ( i == size - 1 ) {
      old = back.getData();
      back.setData( c );
      return old;
    }

    while ( i > 0 ) {      
      curr = curr.getNext();
      i--;
    }

    old = curr.getData();
    curr.setData( c );
    return old;
  }

  String get( int i ) throws IndexOutOfBoundsException {
    
    if ( i >= size || i < 0 )
      throw new IndexOutOfBoundsException();


    if ( i == size - 1 )
      return back.getData();
  
    LNode curr = front;
      
    while ( i > 0 ) {      
      curr = curr.getNext();
      i--;
    }
    return curr.getData();
  }

  String remove( int i ) throws IndexOutOfBoundsException {
    
    if ( i >= size() || i < 0 )
      throw new IndexOutOfBoundsException();

    LNode curr = front;
    size--;
  
    if ( i == 0 ) {
      front = front.getNext();

      if ( size == 0 )
        back = null;
      
      return curr.getData();
    }
      
    while ( i > 1 ) {
      curr = curr.getNext();
      i--;      
    }
  
    if ( curr.getNext() == back )
      back = curr;
  
    String old = curr.getNext().getData();
    curr.setNext( curr.getNext().getNext()  );

    return old;
  }
    
  int size() {
    return size;
  }
  
}

