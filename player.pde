class player extends GameObject {

    player() {
    super(width/2, height/2, 20, 1, pink);
    }
    
    //void show and boolean isDead ARE IN THE SUPERCLASS, GameObject
    void act() { 
      super.act();  
      
      //MOVEMENT WHEN PRESSING KEYS
      if (wkey) vy = -4;
      if (akey) vx = -4;
      if (skey) vy = 4;
      if (dkey) vx = 4;
      
      //STOP IF LET GO OF KEY
      if (!wkey && !skey) vy = 0;
      if (!akey && !dkey) vy = 0;      
      
      //LIMIT MOVEMENT OFFSCREEN
      if (x < 0) x = 0;
      if (x > width) x = width;
      if (y < 0) y = 0;
      if (y > height) y = height;
      
      //SHOOTING
      shoot();
    }
    

//=========================================================    
    void shoot() {
      if (mousePressed) {
        objects.add(new bullet(x,y,5, 1, pink));
      }
    }
}
