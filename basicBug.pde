Fly myBug = new Fly();
Fly b = new Fly();

PImage bg;

Fly[] allthebugs = new Fly[2];
// initialize the Array for bugs, but not the bugs themselves. 

void setup () {
  noStroke();
  for (int i=0; i<allthebugs.length; i++) {
    //must initialize the bugs
    allthebugs[i] = new Fly();
  }
  smooth();
}

void settings(){
size (852,480);
bg = loadImage("https://ak9.picdn.net/shutterstock/videos/11735459/thumb/8.jpg");
}
void draw() {
  background(bg);
  
  for (int i=0; i<allthebugs.length; i++) {
    allthebugs[i].display();
    allthebugs[i].move();
  }
  
  b.display();
  b.move();
  myBug.display();
  myBug.move();
}