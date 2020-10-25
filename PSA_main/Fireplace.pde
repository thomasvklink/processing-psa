class Fireplace {
  //PShapes for SVG images to draw the fireplace and wooden logs
  PShape fireplace;
  PShape logs;
  Fire[] flames = new Fire[60]; //Use class Fire for particles

  float xPosition;
  float yPosition;
  float timer;
  
  Fireplace(float initXPosition, float initYPosition) {
    xPosition = initXPosition;
    yPosition = initYPosition;
  }

  void load() {
    fireplace = loadShape("fireplace.svg");
    logs = loadShape("logs.svg");
    for (int i = 0; i < flames.length; i ++ ) {
      flames[i] = new Fire(random(xPosition-40, xPosition+40), yPosition-20, random(1, 3), random(1, 2.5));
    }
  }

  void display() {
   fill(121,101,97);
   ellipse(xPosition, yPosition, 300, 100);
   shape(fireplace, xPosition, yPosition, width, height);
   shape(logs, xPosition, yPosition-50, width, height);
   
   if (!isBurning){
     timer++;
   }
   
   if (!(timer > 100)){  
     for (int i = 0; i < flames.length; i ++ ) {
      flames[i].display();
      flames[i].update();
     }
   }
   
  }
}
