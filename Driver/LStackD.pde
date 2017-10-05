import java.util.*;

 class LStackD {

     LNodeD top;

     void push( float d ) {
  
  LNodeD n = new LNodeD( d );

  n.setNext(top);
  top = n;
    }

     float pop() throws NoSuchElementException {

  if ( top == null )
      throw new NoSuchElementException();

 float d = top.getData();
  top = top.getNext();
  return d;
    }

     float peek() {
  
  if ( top == null )
      throw new NoSuchElementException();

  return top.getData();
    }

     boolean isEmpty() {
  return top == null;
    }

}
