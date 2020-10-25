class Person {

  PShape fireplace;
  PShape logs;

  float xPosition;
  float yPosition;
  float timer;

  Person(float initXPosition, float initYPosition) {
    xPosition = initXPosition;
    yPosition = initYPosition;
  }

  void load() {
    //fireplace = loadShape("fireplace.svg");
    //logs = loadShape("logs.svg");
  }

  void display() {
  }

  void drag() {
    if (drown && stir && !isBurning && drown2 && (mouseY >=height/2+200) && (mouseX >= (width/2-50)) && (mouseX<= (width/2+50))) {  //if the person is over the fire and all other steps have been done, let boolean feel become true.
      feel = true;
    }
  }
}
