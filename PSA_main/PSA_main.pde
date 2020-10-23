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


void setup() {
  fullScreen();
  shapeMode(CENTER);
  ellipseMode(CENTER);
  rectMode(CENTER);
  sky = new Sky(width/2, height/2);
  trees = new Trees(width/2, height/2);
  trees.load();
  water = new Water(width/2, height/2);
  water.load();
  for (int i = 0; i < streams.length; i ++ ) {
    streams[i] = new Flow(random(0, width), random(height/2+100, height-height/4), random(20, 80), random(5, 10), random(0.1, 0.4));
  }
  land = new Land(width/2, height/2);
  land.load();
  bucket = new Bucket(width/2-700, height/2+400);
  fireplace = new Fireplace(width/2, height/2+300);
  fireplace.load();
  cloud = new Clouds(random(0,width),height/2);
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
  bucket.display();
  fireplace.display();
}

void mouseDragged() {
  bucket.movebucket(mouseX, mouseY);
}
