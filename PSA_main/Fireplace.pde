class Fireplace {
  
  
  PShape fireplace;
  PShape logs;
  Fire[] flames = new Fire[5];

  float xPosition;
  float yPosition;
  
  

  Fireplace(float initXPosition, float initYPosition) {
    xPosition = initXPosition;
    yPosition = initYPosition;
  }

  void load() {
    fireplace = loadShape("fireplace.svg");
    logs = loadShape("logs.svg");
    for (int i = 0; i < flames.length; i ++ ) {
    flames[i] = new Fire(xPosition, yPosition, random(-0.3,0.3),random(1,3));
   }
  }
  
  void display() {
   fill(121,101,97);
   ellipse(xPosition, yPosition, 300, 100);
   shape(fireplace, xPosition, yPosition, width, height);
   shape(logs, xPosition, yPosition-50, width, height);
   for (int i = 0; i < flames.length; i ++ ) {
    flames[i].display();
    flames[i].update();
   }
  }
  
  
}
