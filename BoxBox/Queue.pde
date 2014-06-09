import java.util.Random;
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
  
  void move(){
   for (int i=pos; i!=length; i++){
     if (i==1000) i=0;
     
     boolean intersects = false;
     for (int a=i+1; a!=length; a++){
       if (a==1000) a=0;
       if (Math.abs(que[i].xPos-que[a].xPos) < 20 && Math.abs(que[i].yPos-que[a].yPos) < 20) intersects = true;
     }
     Random a = new Random();
     if (!intersects) que[i].move(bob.xPos, bob.yPos);
     que[i].show();
   } 
  }
  
  void replace(int i, Zombie z){
   // replace zombie at position i with zombie z
   que[i]=z; 
  }
  

  void die(int i){
    // use this when you know the zombie at position i dies
    que[i]=get();
  }
  
  Zombie get(){
    // once you get it, you loose the zombie
    return que[pos++]; 
  }
  
  Zombie get (int i){
   return que[i]; 
  }
  
  boolean hasMoar(){
    if (pos==1000){
     pos=0; 
     jill = !jill;
    }
    return pos!=length;
  }
  
}
