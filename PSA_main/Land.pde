/*
  This is a class Land used to create the land at the bottom of the interactive poster.
  Most items and other classes are to be placed on this land.
*/

class Land {

  //PShape for SVG image
  PShape land;

  //Variables for position
  float xPositionFixed;
  float yPositionFixed;

  Land(float initXPositionFixed, float initYPositionFixed) {
    xPositionFixed =  initXPositionFixed;
    yPositionFixed = initYPositionFixed;
  }

  void load() {
    //load the SVG file
    land = loadShape("land.svg");
  }

  void display() {
    //set the position for the SVG file
    shape(land, xPositionFixed, yPositionFixed, width, height);
  }
}
