class Zombie extends Character {
  int rot;
  Zombie(int x, int y) {
    speed = 1;
    health = 100;
    xPos = x;
    yPos = y;
    img = loadImage("Zombie.png");
    rot=0;
  }

  void show() {
    pushMatrix();
    translate(xPos, yPos); 
    if (hdir==45) {
      rotate(radians(315)); 
    } else if (hdir==90) {
      rotate(radians(270)); 
    } else if (hdir==-180) {
      rotate(radians(180)); 
    } else if (hdir==-135) {
      rotate(radians(135)); 
    } else if (hdir==-90) {
      rotate(radians(90)); 
    } else if (hdir==-45) {
      rotate(radians(45)); 
    } else if (hdir==-225) {
      rotate(radians(225)); 
    }
    image(img,0,0); 
    popMatrix();
  }

  void move(int x, int y) {
    rot++;
    double tempAngle;
    double tempAngle2;
    tempAngle = Math.atan2(xPos-x, yPos-y);
    tempAngle = tempAngle*57.2957795-90;
    tempAngle2 = hdir;
    if (rot>15) {
        hdir = (int)tempAngle/45*45;
    }
    if (hdir != tempAngle2) {
        rot = 0;
    }
    
    if (hdir==0) {
      xPos -= speed;
    } else if (hdir==45) {
      xPos -= speed;
      yPos += speed;
    } else if (hdir==90) {
      yPos += speed;
    } else if (hdir==-180) {
      xPos += speed;
    } else if (hdir==-135) {
      xPos += speed;
      yPos -= speed;
    } else if (hdir==-90) {
      yPos -= speed;
    } else if (hdir==-45) {
      xPos -= speed;
      yPos -= speed;
    } else if (hdir==-225) {
      xPos += speed;
      yPos += speed;
    }
    //needs to check for collision outside of function
    //because it doesn't know who the player is
    
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
  /*
  void setLimits(int x, int y, int scale){
    if (hdir==0) {
      yPos = x*scale;
    } else if (hdir==-45) {
      xPos = x*scale;
      yPos = y*scale;
    } else if (hdir==-90) {
      xPos = y*scale;
    } else if (hdir==-135) {
      xPos = (x+1)*scale;
      yPos = y*scale;
    } else if (hdir==-180) {
      yPos = x*scale;
    } else if (hdir==-225) {
      xPos = (x+1)*scale;
      yPos = (y+1)*scale;
    } else if (hdir==90) {
      xPos = y*scale;
    } else if (hdir==45) {
      xPos = x*scale;
      yPos = (y+1)*scale;
    }
  }
  */
}

