class Land {
  
  PShape land;
  
  float xPositionFixed;
  float yPositionFixed;

  Land(float initXPositionFixed, float initYPositionFixed) {
    xPositionFixed =  initXPositionFixed;
    yPositionFixed = initYPositionFixed;
    initXPositionFixed = width/2;
    initYPositionFixed = height/2;
  }
  
  
  void load() {
    land = loadShape("land.svg");
  }
  
  void display() {
    shape(land, xPositionFixed, yPositionFixed, width, height);
  }
}
