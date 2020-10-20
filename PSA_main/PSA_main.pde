/*  
 Processing Final Project
 P4WCI 2020
 Tristan van Marle, Thomas van Klink
 October 2020
 */

Sky sky;
Trees trees;
Water water;

void setup() {
  size(displayWidth, displayHeight);
  shapeMode(CENTER);
  sky = new Sky(width/2, height/2);
  trees = new Trees(width/2, height/2);
  trees.load();
  water = new Water(width/2, height/2);
  water.load();
}

void draw() {
  sky.display();
  trees.display();
  water.display();
}
