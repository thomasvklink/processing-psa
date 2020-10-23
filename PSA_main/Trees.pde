class Trees {

  PShape tree1;
  PShape tree2;

  float xPositionFixed;
  float yPositionFixed;

  Trees(float initXPositionFixed, float initYPositionFixed) {
    xPositionFixed =  initXPositionFixed;
    yPositionFixed = initYPositionFixed;
    initXPositionFixed = width/2;
    initYPositionFixed = height/2;
  }

  void load() {
    tree1 = loadShape("trees1.svg");
    tree2 = loadShape("trees2.svg");
  }

  void display() {
    shape(tree1, xPositionFixed, yPositionFixed, width, height);
    shape(tree2, xPositionFixed, yPositionFixed, width, height);
  }
}
