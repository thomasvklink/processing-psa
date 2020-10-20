/*  
 Processing Final Project
 P4WCI 2020
 Tristan van Marle, Thomas van Klink
 October 2020
 */

Sky sky;
Trees trees;
Water water;
Land land;
Clouds cloud;

void setup() {
  size(displayWidth, displayHeight);
  shapeMode(CENTER);
  ellipseMode(CENTER);
  rectMode(CENTER);
  sky = new Sky(width/2, height/2);
  trees = new Trees(width/2, height/2);
  trees.load();
  water = new Water(width/2, height/2);
  water.load();
  land = new Land(width/2, height/2);
  land.load();
  cloud = new Clouds(width/2,height/2);
}

void draw() {
  sky.display();
  trees.display();
  water.display();
  land.display();
  cloud.display();
  cloud.update();
  
}
