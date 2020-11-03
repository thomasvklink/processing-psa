/*
 This is a class Water used to create the river that is behind the land.
 This class also calls the class Flow to create the streams in the river.
 This makes the river look like it is flowing.
*/

Flow[] streams = new Flow[20];

class Water {

  PShape reflection;

  float xPositionFixed;
  float yPositionFixed;

  Water(float initXPositionFixed, float initYPositionFixed) {
    xPositionFixed =  initXPositionFixed;
    yPositionFixed = initYPositionFixed;

    for (int i = 0; i < streams.length; i ++ ) {
      streams[i] = new Flow(random(0, width), random(height/2+100, height-height/4), random(20, 200), random(5, 8), random(0.1, 0.4));
    }
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

    for (int i = 0; i < streams.length; i++) { 
      streams[i].display();
      streams[i].update();
    }
  }
}
