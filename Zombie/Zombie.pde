class Zombie extends Character {
  
  Zombie(){
    //xspeed = something
    //yspeed = something
    // spawn it somewhere
    // face champ
  }
  
  void display(){
    move();
   // draw zombie here according to x and y coords
  }
  
  void move(){
    if (dir==0){
      ycor -= yspeed;
    } else if (dir==45){
      xcor += xspeed * .707;
      ycor -= yspeed * .707;
    } else if (dir==90){
      xcor += xspeed;
    } else if (dir==135){
      xcor += xspeed * .707;
      ycor += yspeed * .707;
    } else if (dir==180){
      ycor += yspeed;
    } else if (dir==215){
      xcor -= xspeed * .707;
      ycor += yspeed * .707;
    } else if (dir==270){
      xcor -= xspeed;
    } else if (dir==315){
      xcor -= xspeed * .707;
      ycor -= yspeed * .707;
    }
    //needs to check for collision outside of function
    //because it doesn't know who the player is
    
  }
  
}
