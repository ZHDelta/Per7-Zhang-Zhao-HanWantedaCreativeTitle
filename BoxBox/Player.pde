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
      mouse = new PVector(xPos-mouseX, yPos-mouseY);
      //dir = PVector.sub(mouse,location);
      dir = mouse;
  }
  
  void show(){

      pushMatrix();
      noStroke();
      translate(xPos, yPos);
      update();
      rotate(dir.heading());
      imageMode(CENTER);
      move();
      image(img, 0, 0);
      translate(-xPos, -yPos);
      popMatrix();
  
  }
  
  void move(){
      if (moveLeft) xPos -= speed;
      if (moveRight) xPos += speed;
      if (moveUp) yPos -= speed;
      if (moveDown) yPos += speed;
  }
  
}
   
    
