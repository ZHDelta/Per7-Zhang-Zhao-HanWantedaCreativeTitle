public class Player extends Character {
  PVector mouse, location, dir;
  
  //float kills;
  
  public Player(){
    location = new PVector(300,300);
    health = 100;
  }
  
  
  void show(){
    
  }
  
  void keyPressed(){
      if (key == CODED){
          if (keyCode == UP){
            moveUp = true;  
          }
          if (keyCode == DOWN){
            moveRight = true;
          }
          if (keyCode == LEFT){
            moveLeft = true;
          }
          if (keyCode == RIGHT){
            moveRight = true;
          }
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
        else if (keyCode = UP){
          moveUp = false;
        }
        else if(keyCode == DOWN){
            moveDown = false;
        }
      }
  }
   
    
