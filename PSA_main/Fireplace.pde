/*
  This is a class Fireplace used to create the Fireplace that is seen on the screen most of the interactions happen with this Fireplace.\
  It is also used to call the class Fire.
*/

class Fireplace {
  //PShapes for SVG images to draw the fireplace and wooden logs
  PShape fireplace;
  PShape logs;
  Fire[] flames = new Fire[60]; //Use class Fire for particles

  //Variables for position and timer
  float xPosition;
  float yPosition;
  float timer;

  Fireplace(float initXPosition, float initYPosition) {
    xPosition = initXPosition;
    yPosition = initYPosition;
  }

  void load() {
    //load the SVG files for the fireplace and wooden logs
    fireplace = loadShape("fireplace.svg");
    logs = loadShape("logs.svg");

    //create the Fire particles
    for (int i = 0; i < flames.length; i ++ ) {
      flames[i] = new Fire(random(xPosition-40, xPosition+40), yPosition-20, random(1, 3), random(1, 2.5));
    }
  }

  void display() {

    //create the fireplace
    fill(121, 101, 97);
    ellipse(xPosition, yPosition, 300, 100);
    shape(fireplace, xPosition, yPosition, width, height);
    shape(logs, xPosition, yPosition-50, width, height);

    //update the timer
    if (!isBurning) {
      timer++;
    }

    //continue making flame particles as long as the timer does not exceed 100
    if (!(timer > 100)) {  
      for (int i = 0; i < flames.length; i ++ ) {
        flames[i].display();
        flames[i].update();
      }
    }
  }
}
