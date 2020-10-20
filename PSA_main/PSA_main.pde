/*  
 Processing Final Project
 P4WCI 2020
 Tristan van Marle, Thomas van Klink
 October 2020
 */

Sky sky;

void setup() {
  size(displayWidth, displayHeight);
  sky = new Sky(width/2, height/2);
  sky.display();
}
