Player bob;
boolean moveLeft, moveRight, moveUp, moveDown, firing;
int gridSize, charSize;
//DynamicMap grid;
Queue zoms, incZoms;
int wave;

void setup(){
   gridSize = 600;
   size(gridSize,gridSize);
   charSize = 40;
   bob = new Player();
   zoms = new Queue(); // zombies on board
   incZoms = new Queue(); // zombies spawning
   /*grid = new DynamicMap(gridSize, gridSize, gridSize/charSize);
   grid.add(new Zombie(0, 0));
   grid.add(new Zombie(32, 35));
   grid.add(new Zombie(145, 2));*/
}

void draw(){
  background(300,250,300);
  bob.show();
  if (incZoms.hasMoar()){
   zoms.add(incZoms.get()); 
  }
  if (!zoms.hasMoar()){
    int numZoms = wave*20+30;
    while (numZoms>0){
      int temp = (int)(Math.random()*4);
      if (temp==0){
        incZoms.add(new Zombie((int)(Math.random()*600), 0));
      } else if (temp==1){
        incZoms.add(new Zombie(0, (int)(Math.random()*600)));
      } else if (temp==2){
        incZoms.add(new Zombie(600, (int)(Math.random()*600)));
      } else if (temp==3){
        incZoms.add(new Zombie((int)(Math.random()*600), 600));
      }
      numZoms--;
    }
    wave++;
  }
  zoms.move();
  //grid.move();
}

void mousePressed() {
  zoms.lookFor(mouseX, mouseY);
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
       //   if (key == ' '){
        //    firing = true;
      //}
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
        //else if(key == " "){
         // firing = false;
       // }
      }
  }
  /*
class DynamicMap {
  Zombie[][] map;
  int scale; // how big characters are compared to map
  
  DynamicMap(int x, int y, int scale){
    this.scale=scale;
    // x and y values for maxDimensions
    map = new Zombie[x/scale][y/scale];
  }
  
  boolean add(Zombie z){
    // we can make a queue. if it was not added, add to queue to add next
   if (map[z.xPos/scale][z.xPos/scale]==null){
     // if it has it, insert z
    map[z.xPos/scale][z.xPos/scale] = z;
    return true;
   }
   return false;
  }
  
  void move(){
    for (int y = 0; y < map[0].length; y++){
      for (int x = 0; x < map.length; x++){
        if (map[x][y]!=null){
          Zombie bomb = map[x][y];
          bomb.move(bob.xPos, bob.yPos);
          update(bomb, x, y);
          bomb.show();
        }
      }
    }
  } 
  
  void update(Zombie z, int x, int y){
    if (map[z.xPos/scale][z.yPos/scale]==null){
      map[z.xPos/scale][z.yPos/scale] = z;
      map[x][y] = null;
    } else {
      z.setLimits(x, y, scale);
    }
  }
 
}

*/
