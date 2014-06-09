class Gun {
  int damage;
  int cooldown;
  
  Gun(int dmg){
   damage = dmg;
  }
  int dmg(){
   return damage; 
  }
  
  void cd(){
    cooldown=gunCooldown;
  }
  
  boolean offCd(){
   return cooldown<=0; 
  }
  
  void tick(){
   if (cooldown>0){
    cooldown--;
   } 
  }
}

