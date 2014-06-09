class Player extends Character {
  
  int dmgTick;
  //float kills;
  Player() {
    //placeholder
    speed = playerSpeed;
    health =playerHealth;
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
      if (dmgTick>0) dmgTick--;
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
      textSize(12);
      text(health, xPos, yPos-20); 
  }
  
  void move(){
      if (moveLeft) xPos -= speed;
      if (moveRight) xPos += speed;
      if (moveUp) yPos -= speed;
      if (moveDown) yPos += speed;
      if (xPos < 0){
      xPos=0;
    } else if (xPos > gridSize){
     xPos=600; 
    } else if (yPos < 0){
      yPos=0;
    } else if (yPos > gridSize){
     yPos=600; 
    }
  }
  void waveOver(){
   health+=5;
   if (health>100) health=100;
  }
  
  void loseHealth(int health){
   this.health-=health; 
  }
  
  boolean isDead(){
    return health<=0;
  }
}
   
    
