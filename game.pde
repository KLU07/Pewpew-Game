void game() {
  background(green);

  
  //FOUNDATIONS
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
  
}

void gameClicks() {

}