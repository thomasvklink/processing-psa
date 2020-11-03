/*
  This is a class that calls other classes into one to form the background of the interactive poster.
 it calls the following classes: Sky, Trees, Water, Flow, Land and Fireplace.
 */

class Background {

  float xPosition;
  float yPosition;


  Sky sky;
  Trees trees;
  Water water;
  Land land; 


  Background(float initXPosition, float initYPosition) {
    xPosition = initXPosition;
    yPosition = initYPosition;

    sky = new Sky(width/2, height/2);
    trees = new Trees(width/2, height/2);
    water = new Water(width/2, height/2);
    land = new Land(width/2, height/2);


    //Loading images
    trees.load();
    water.load();
    land.load();
  }

  void display() {
    sky.display();
    trees.display();
    water.display(); 
    land.display();
  }
}
