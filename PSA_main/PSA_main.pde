/*  
 Processing Final Project
 P4WCI 2020
 Tristan van Marle, Thomas van Klink
 October 2020
 */

Sky sky;
Trees trees;
Water water;
Flow[] streams = new Flow[20];
Land land;
Bucket bucket;
Fireplace fireplace;
Clouds cloud;
Shovel shovel;
Person man;

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
  sky = new Sky(width/2, height/2);
  trees = new Trees(width/2, height/2);
  water = new Water(width/2, height/2);
  for (int i = 0; i < streams.length; i ++ ) {
    streams[i] = new Flow(random(0, width), random(height/2+100, height-height/4), random(20, 200), random(5, 8), random(0.1, 0.4));
  }
  land = new Land(width/2, height/2);
  bucket = new Bucket(width/2-700, height/2+400);
  shovel = new Shovel((width/2+370), (height/2+100));
  fireplace = new Fireplace(width/2, height/2+300);
  cloud = new Clouds(random(0, width), height/2);
  man = new Person(width/2-400,height/2+400);

  //Loading images
  trees.load();
  water.load();
  land.load();
  fireplace.load();
  man.load();

  //Set booleans for logic
  isBurning=true;
  drown = false;
  stir = false;
  drown2 = false;
  feel = false;
}

void draw() {
  sky.display();
  trees.display();
  water.display(); 
  for (int i = 0; i < streams.length; i++) { 
    streams[i].display();
    streams[i].update();
  }
  land.display();
  fireplace.display();
  man.display();
  shovel.display();
  bucket.display();
  
}

void mouseDragged() {
  if (overbucket) {
    bucket.drag(mouseX, mouseY);
  }
  if (!overbucket && overshovel) {
    shovel.drag(mouseX, mouseY);
  }
  man.update(mouseY,mouseX);
}
