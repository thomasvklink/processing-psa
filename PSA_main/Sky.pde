/*
  This is a class Sky used to create the sky background.
 This class also calls the class Clouds.
 */

class Sky {

  //variables for positions
  float xPositionFixed;
  float yPositionFixed;

  //calls class Clouds
  Clouds cloud;

  Sky(float initXPositionFixed, float initYPositionFixed) {
    xPositionFixed = initXPositionFixed;
    yPositionFixed = initYPositionFixed;

    //creates object out of class Clouds
    cloud = new Clouds(random(0, width), height/2);
  }

  void display() {
    //set sky background
    for (int c = 0; c<height; c++)
    {
      stroke(0.5*c, c+250, c+250);
      line(0, c, width, c);
    } 
    //call methods out of class Clouds
    cloud.display();
    cloud.update();
  }
}
