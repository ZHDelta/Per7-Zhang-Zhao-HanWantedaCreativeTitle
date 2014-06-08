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
  
  
  
  
  
  
class DynamicMap {
  Character[][] map;
  int scale; // how big characters are compared to map
  
  DynamicMap(int x, int y, int scale){
    scale = 0;
    // x and y values for maxDimensions
    map = new Character[x/scale][y/scale];
  }
  
  boolean add(int x, int y, Zombie z){
    // we can make a queue. if it was not added, add to queue to add next
   if (map[x/scale][y/scale]==null){
     // if it has it, insert z
    map[x/scale][y/scale] = z;
    return true;
   } 
   return false;
  }
  
  void move(){
    for (int y = 0; y < map[0].length; y++){
      for (int x = 0; x < map.length; x++){
        if (map[x][y]!=null){
          map[x][y].move(bob.xPos, bob.yPos);
          update(map[x][y], x, y);
          map[x][y].show();
        }
      }
    }
  } 
  
  void update(Character z, int x, int y){
    if (map[z.xPos/scale][z.yPos/scale]==null){
      map[z.xPos/scale][z.yPos/scale] = z;
    } else {
      z.setLimits(x, y, scale);
    }
  }
  
}
