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
    fill(3,151,157);
    rect(xPositionFixed, yPositionFixed+360, width, height/2);
    shape(reflection, xPositionFixed, yPositionFixed, width, height);
  //  fill(255,255,255);
   // rect(random (xPositionFixed-1200, xPositionFixed+1200), random(yPositionFixed+300, yPositionFixed+360), random(10,50), random(10,50));
  }
  
 void stream() {

  }
    
 }
