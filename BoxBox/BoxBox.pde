Player bob;
boolean moveLeft, moveRight, moveUp, moveDown, firing;
void setup(){
   size(600,600);
   bob = new Player();

}

void draw(){
  background(300,250,300);
  bob.show();
}

void keyPressed(){
      if (key == CODED){
          if (keyCode == UP){
            moveUp = true;  
          }
          if (keyCode == DOWN){
            moveDown = true;
          }
          if (keyCode == LEFT){
            moveLeft = true;
          }
          if (keyCode == RIGHT){
            moveRight = true;
          }
          /*if (key == ' '){
            firing = true;
      }*/
      }
}
  
  void keyReleased(){
      if (key == CODED){
        if (keyCode == LEFT){
          moveLeft = false;
      }
        else if (keyCode == RIGHT){
          moveRight = false;
        }
        else if (keyCode == UP){
          moveUp = false;
        }
        else if(keyCode == DOWN){
          moveDown = false;
        }
       /* else if(key == " "){
          firing = false;
        }*/
      }
  }
  

