class Water {

  PShape reflection;

  float xPositionFixed;
  float yPositionFixed;

  Water(float initXPositionFixed, float initYPositionFixed) {
    xPositionFixed =  initXPositionFixed;
    yPositionFixed = initYPositionFixed;
  }

  void load() {
    //Load the SVG for the reflection
    reflection = loadShape("reflection.svg");
  }

  void display() {

    //create the river
    noStroke();
    fill(3, 151, 157);
    rect(xPositionFixed, yPositionFixed+360, width, height/2);

    //set the SVG
    shape(reflection, xPositionFixed, yPositionFixed, width, height);
  }
}
