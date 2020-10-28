/*  
 Processing Final Project
 P4WCI 2020
 Tristan van Marle, Thomas van Klink
 October 2020
 */


//Reference classes
Background background;
Bucket bucket;
Shovel shovel;
Person man;
Interface gui;

//create booleans
boolean isBurning;
boolean overbucket;
boolean overshovel;
boolean drown;
boolean stir;
boolean drown2;
boolean feel;


void setup() {
  //Sketch settings
  fullScreen();
  shapeMode(CENTER);
  ellipseMode(CENTER);
  rectMode(CENTER);

  //Creating objects
  bucket = new Bucket(width/2-700, height/2+400);
  shovel = new Shovel((width/2+370), (height/2+100));
  background = new Background(width/2, height/2);
  gui = new Interface(width/2, height/2);
  man = new Person(width/2-450, height/2+450);

  //Loading images
  man.load();
  gui.load();

  //Set booleans for logic
  isBurning=true;
  drown = false;
  stir = false;
  drown2 = false;
  feel = false;
}

void draw() {
  background.display();
  man.display();
  shovel.display();
  bucket.display();
  gui.display();
}

void mouseDragged() {
  //if the mouse is over the bucket while dragging let it get dragged.
  if (overbucket) {
    bucket.drag(mouseX, mouseY);
  }
  //if the mouse is over the shovel and not over the bucket let the shovel get dragged.
  if (!overbucket && overshovel) {
    shovel.drag(mouseX, mouseY);
  }
//if the mouse is over the man and not over the bucket or the shovel let the man move while dragging.
  if (!overbucket && !overshovel) {
  man.update(mouseY, mouseX);
}
}
