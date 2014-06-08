class Player extends Character {
  
  //float kills;
  
  Player() {
    //placeholder
    speed = 2;
    health = 100;
    moveLeft = moveRight = moveUp = moveDown = firing = false;
    xPos = yPos = 300;
    img = loadImage("Pixel2.png");
    location = new PVector(xPos, yPos);
    mouse = new PVector(mouseX, mouseY);
    dir = PVector.sub(mouse,location);
    
    
  }
  
   void update(){
      mouse = new PVector(mouseX, mouseY);
      dir = PVector.sub(mouse,location);
  }
  
  void show(){
      rotate(atan(dir.y/dir.x));
      move();
      image(img, xPos, yPos);

  }
  
  void move(){
      if (moveLeft) xPos -= speed;
      if (moveRight) xPos += speed;
      if (moveUp) yPos -= speed;
      if (moveDown) yPos += speed;
  }
  
}
   
    
