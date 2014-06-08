class Zombie extends Character {

  Zombie() {
    //speed = something
    // health = something
    
    // spawn it somewhere
  }

  void show() {
    // draw zombie here according to x and y coordss
  }

  void move(int x, int y) {
    
    hdir = (int)Math.atan2(xPos-x, yPos-y);
    hdir = (hdir/45) * 45;
    
    if (hdir==0) {
      yPos -= speed;
    } else if (hdir==45) {
      xPos += speed * .707;
      yPos -= speed * .707;
    } else if (hdir==90) {
      xPos += speed;
    } else if (hdir==135) {
      xPos += speed * .707;
      yPos += speed * .707;
    } else if (hdir==180) {
      yPos += speed;
    } else if (hdir==215) {
      xPos -= speed * .707;
      yPos += speed * .707;
    } else if (hdir==270) {
      xPos -= speed;
    } else if (hdir==315) {
      xPos -= speed * .707;
      yPos -= speed * .707;
    }
    //needs to check for collision outside of function
    //because it doesn't know who the player is
  }
  
  void setLimits(int x, int y, int scale){
    if (hdir==0) {
      yPos = y*scale;
    } else if (hdir==45) {
      xPos = (x+1)*scale;
      yPos = y*scale;
    } else if (hdir==90) {
      xPos = (x+1)*scale;
    } else if (hdir==135) {
      xPos = (x+1)*scale;
      yPos = (y+1)*scale;
    } else if (hdir==180) {
      yPos = (y+1)*scale;
    } else if (hdir==215) {
      xPos = x*scale;
      yPos = (y+1)*scale;
    } else if (hdir==270) {
      xPos = x*scale;
    } else if (hdir==315) {
      xPos = x*scale;
      yPos = y*scale;
    }
  }
  
}

