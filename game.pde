void game() {
  background(green);

  
  //FOUNDATIONS (GAME ENGINE)
  int i = 0;
  while (i < objects.size()) {
    GameObject obj = objects.get(i);
    obj.show();
    obj.act();
    if (obj.isDead()) {
      objects.remove(i);
    } else {
      i = i + 1;
    }
  }
  
  
  //ENEMY SPAWN
  if (frameCount % 60 == 0) {
  objects.add(new enemy());
  }
}

void gameClicks() {

}
