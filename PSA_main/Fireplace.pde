class Fireplace {


  PShape fireplace;
  PShape logs;
  Fire[] flames = new Fire[60];

  float xPosition;
  float yPosition;



  Fireplace(float initXPosition, float initYPosition) {
    xPosition = initXPosition;
    yPosition = initYPosition;
    drown = false;
  }

  void load() {
    fireplace = loadShape("fireplace.svg");
    logs = loadShape("logs.svg");
    for (int i = 0; i < flames.length; i ++ ) {
      flames[i] = new Fire(random(xPosition-40, xPosition+40), yPosition-20, random(1, 3), random(1, 2.5));
    }
  }

  void display() {
    fill(121, 101, 97);
    ellipse(xPosition, yPosition, 300, 100);
    shape(fireplace, xPosition, yPosition, width, height);
    shape(logs, xPosition, yPosition-50, width, height);
    if (!drown) {
      for (int i = 0; i < flames.length; i ++ ) {
        flames[i].display();
        flames[i].update();
      }
    }
  }
}
