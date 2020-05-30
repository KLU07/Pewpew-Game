//GAME OBJECTS
ArrayList<GameObject> objects;
player myPlayer;

//COLOUR PALLETTE
color pink = #FF3F79;
color blue = #36D1FC;
color green = #A6D32A;
color yellow = #FFC83D;
color brown = #5B4745;

color purple = #D87FD3;
color white = #FFFFFF;
color black = #000000;

//MODE FRAMEWORK VARIABLES
final int INTRO    = 0; 
final int GAME     = 1;
final int PAUSE    = 2;
final int GAMEOVER = 3;
final int OPTIONS = 4;
int mode = INTRO;

//KEY VARIABLES
boolean wkey, akey, skey, dkey, spacekey;

//TEXT
PFont font;

//=============================================================
void setup() {
  //GRAPHICS
  size(800, 700);
  noStroke();
  
  //INITIALIZE KEY VARIABLES
  wkey = akey = skey = dkey = spacekey = false;
  
  //INITIALIZE KEY VARIABLES
  font = createFont("Gamer.ttf",32);
  textFont(font);
  textAlign(CENTER,CENTER);
  
  //GAME OBJECT INITIALIZING
  objects = new ArrayList<GameObject>();
  myPlayer = new player();
  objects.add(myPlayer);
  
  int i = 0;
  while (i < 100) {
    objects.add(new obstacle());
    i = i + 1;
  }

}

//=============================================================
void draw() {
  println(objects.size());
  
  //CHOOSE WHICH TAB TO GO TO
  if      (mode == INTRO)    intro();
  else if (mode == GAME)     game();
  else if (mode == PAUSE)    pause();
  else if (mode == GAMEOVER) gameOver();
  else if (mode == OPTIONS) options();
  else println("Mode error! You need to add a new mode to your mode framework in the draw function! -- Mr. Pelletier");
}
