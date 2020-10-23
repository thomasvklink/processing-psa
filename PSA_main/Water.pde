class Water {

  PShape reflection;

  float xPositionFixed;
  float yPositionFixed;

  Water(float initXPositionFixed, float initYPositionFixed) {
    xPositionFixed =  initXPositionFixed;
    yPositionFixed = initYPositionFixed;
    initXPositionFixed = width/2;
    initYPositionFixed = height/2;
  }

  void load() {
    reflection = loadShape("reflection.svg");
  }

  void display() {
    noStroke();
    fill(3, 151, 157);
    rect(xPositionFixed, yPositionFixed+360, width, height/2);
    shape(reflection, xPositionFixed, yPositionFixed, width, height);
  }
}
