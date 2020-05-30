class bullet extends GameObject {

  bullet(float x, float y, float size, float hp, color c) {
    super(x, y, size, 1, c);
    //PLAYER BULLETS
    if (c == pink) {
      PVector aim = new PVector(mouseX - myPlayer.x, mouseY - myPlayer.y);
      aim.setMag(10);
      vx = aim.x;
      vy = aim.y;
    } 
    //ENEMY BULLETS
    if (c == blue) {
      PVector aim = new PVector( myPlayer.x - x, myPlayer.y - y);
      aim.setMag(10);
      vx = aim.x;
      vy = aim.y;    
    }
  }


//===========================================================  
void act() {
    super.act();
    if (x < 0 || x > width || y < 0 || y > height) {
      hp = 0;
    }
    
    //INTERACTION WITH OBSTACLE
    int i = 0;
    while (i < objects.size()) {
      GameObject obj = objects.get(i);
      if (obj instanceof obstacle && touching(obj)) {
          PVector bounce = new PVector(x - obj.x, y - obj.y);
          bounce.setMag(10);
          vx = bounce.x;
          vy = bounce.y;
      }
      //CHECK PLAYER BULLET COLLISION WITH ENEMY
      if (obj instanceof enemy && touching(obj) && myColor == pink) {
          obj.hp --;
      }
      i = i + 1;
    }
    
  }
  
}
