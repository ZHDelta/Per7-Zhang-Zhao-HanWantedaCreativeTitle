class Player extends Character {
  
  //float kills;
  
  Player() {
    //placeholder
    speed = 2;
    health = 100;
    moveLeft = moveRight = moveUp = moveDown = false;
    xPos = yPos = 300;
  }
  
  
  void show(){
      if (moveLeft) xPos -= speed;
      if (moveRight) xPos += speed;
      if (moveUp) yPos -= speed;
      if (moveDown) yPos += speed;
      ellipse(xPos, yPos, 30, 30);
  }
  
  
}
   
    
