/*  
 Processing Final Project
 P4WCI 2020
 Tristan van Marle, Thomas van Klink
 October 2020
 
 Program description:
 This program shows an interactive poster on how to correctly put out your fire.
 It was based on a public service announcement on how to prevent wildfires from BeOutdoorSafe.
 Which is in association with Smokey the largest wildfire prevention service in the US. 
 The program was designed to raise awareness in how to properly put out your campfire. 
 The program has multiple steps which will have to be done in the correct order to correctly put out you fire.
*/


//Reference classes
Background background;
Bucket bucket;
Shovel shovel;
Fireplace fireplace;
Person man;
Interface gui;

void setup() {
  //Sketch settings
  fullScreen();
  shapeMode(CENTER);
  ellipseMode(CENTER);
  rectMode(CENTER);

  //Creating objects
  background = new Background(width/2, height/2);
  fireplace = new Fireplace(width/2, height/2+300);
  bucket = new Bucket(width/2-700, height/2+400);
  shovel = new Shovel((width/2+370), (height/2+100));
  gui = new Interface(width/2, height/2);
  man = new Person(width/2-450, height/2+450);

  //Loading images
  fireplace.load();
  man.load();
  gui.load();
}

void draw() {
  background.display();
  fireplace.display();
  man.display();
  shovel.display();
  bucket.display();
  gui.display();
  gui.check();
}
void mousePressed() {
  bucket.hover(mouseX, mouseY, shovel.overshovel);
  shovel.hover(mouseX, mouseY, bucket.overbucket);
}
void mouseDragged() {
  bucket.drag(mouseX, mouseY);
  bucket.filled(fireplace.xPosition, fireplace.yPosition, background.water.xPositionFixed, background.water.yPositionFixed);
  shovel.drag(mouseX, mouseY);
  man.update(mouseY, mouseX, bucket.overbucket, shovel.overshovel);
  man.limited();
  gui.input(mouseX, mouseY);
}
