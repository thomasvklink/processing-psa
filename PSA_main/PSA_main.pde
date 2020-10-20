/*  
 Processing Final Project
 P4WCI 2020
 Tristan van Marle, Thomas van Klink
 October 2020
 */

Sky sky;
Trees trees;
Water water;
Flow[] streams = new Flow[10];
Land land;
Clouds cloud;

void setup() {
  size(displayWidth, displayHeight);
  shapeMode(CENTER);
  ellipseMode(CENTER);
  rectMode(CENTER);
  sky = new Sky(width/2, height/2);
  sky.display();
  trees = new Trees(width/2, height/2);
  trees.load();
  water = new Water(width/2, height/2);
  water.load();
  for (int i = 0; i < streams.length; i ++ ) {
     streams[i] = new Flow(random(0, width),random(height/2, height-height/4),random(10,30), random(10,50));
   }
  land = new Land(width/2, height/2);
  land.load();
  cloud = new Clouds(width/2,height/2);
}

void draw() {
  trees.display();
  water.display(); 
  for (int i = 0; i < streams.length; i++) { 
     streams[i].display();
    }
  cloud.display();
  cloud.update();
  land.display();
}
