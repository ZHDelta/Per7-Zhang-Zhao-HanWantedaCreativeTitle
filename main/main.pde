dynamicArray chars;

void setup(){
  // create background
  Player a = new Player(); //instantiate player
  a.display();// draw player
  // find out a way to store walls and place them
  // draw walls
  chars = new dynamicArray();
}

void draw(){
 
  
}

class dynamicArray{
  Character[] = chars;
  int len;
  void dynamicArray(){
    chars = new Character[10];
    len = 0;
  } 
  
  // returns the Character at the position
  void get(int position){
    return chars[position];
  }
  
  // expands the list of chars
  void expand(){
    Character[] temp = new Character[chars.size*1.5];
    for (int i=0; i<len; i++){
      temp[i]=chars[i];
    }
    chars=temp;
  }
  
  // shrinks the list of chars
  void shrink(){
    Character[] temp = new Character[chars.size*.75];
    for (int i=0; i<len; i++){
      temp[i]=chars[i];
    }
    chars=temp;
  }
  
  // needs to find a method to sort chars
  // like pixel format
}
