import java.util.*;

  class LStack {
int N = 0;
     LNodeC top;

     void push( Character d ) {
  
  LNodeC n = new LNodeC( d );

  n.setNext(top);
  top = n;
   N++;
    }

     Character pop() throws NoSuchElementException {

  if ( top == null )
      throw new NoSuchElementException();

  Character d = top.getData();
  top = top.getNext();
          N--;
  return d;
    }
int size() {
        return N;
    }
     Character peek() {
  
  if ( top == null )
      throw new NoSuchElementException();

  return top.getData();
    }

     boolean isEmpty() {
  return top == null;
    }

}

