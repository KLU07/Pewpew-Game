class obstacle extends GameObject {

  obstacle() {
    super(purple);
  }
  
  void act() {
    super.act();
    
    //DETECT COLLISION WITH PLAYER
    if (touching(myPlayer)) {
      PVector bounce = new PVector(myPlayer.x - x, myPlayer.y - y);
      bounce.setMag(5); //speed of bounce-off
      myPlayer.x = myPlayer.x + bounce.x;
      myPlayer.y = myPlayer.y + bounce.y;
    }
  }
}
