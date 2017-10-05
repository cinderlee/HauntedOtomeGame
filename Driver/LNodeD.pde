 class LNodeD {
    
    float data;
    LNodeD next;

    LNodeD( float d ) {
    data = d;
    }
    String toString() {
    return "" + data;
    }
    void setData( float c ) {
    data = c;
    }
    void setNext( LNodeD n ) {
    next = n;
    }
    float getData() {
    return data;
    }
    LNodeD getNext() {
    return next;
    }    
}

