class Queue{
  
  Zombie[] que;
  int length;
  int pos;
  boolean jack, jill;
  // OMG I KNOW! ILL MAKE THIS A CIRCULAR QUEUE
  
  Queue(){
    que = new Zombie[1000];
    length = 0;
    pos = 0;
    // dear zombie spawns,
    // YOU BETTER NOT EXCEED THE QUEUE
    // THIS IS A ORDER YOU HEAR ME?
    jack = false;
    jill = false;
  }
 
  void add(Zombie bill){
    //but just in case,
    if (jack==jill){
      if (length <= 999) {
         que[length] = bill;
         length++; 
      } else {
         length = 0;
         jack = !jack;
      }
    } else if (jack!=jill){
      if (length<pos) {
        que[length] = bill;
        length++;
      }
    }
  }
  
  Zombie get(){
    return que[pos++]; 
  }
  
  boolean hasMoar(){
    if (pos==1000){
     pos=0; 
     jill = !jill;
    }
    return pos!=length;
  }
  
}
