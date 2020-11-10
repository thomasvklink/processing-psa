/*
  This is a class Shovel used to create the shovel that is moveable by dragging.
 This shovel is needed for the 2nd step of the process of putting out your campfire correctly.
*/

class Shovel {

  //Variables for position
  float shovelX;
  float shovelY;
  boolean overshovel;


  Shovel(float initXPosition, float initYPosition) {
    shovelX = initXPosition;
    shovelY = initYPosition;

    //set boolean for logic
    overshovel = false;
  }
  void display() {

    //stick
    fill(183, 152, 108);
    pushMatrix();
    translate(shovelX, shovelY);
    rotate(radians(-10));
    rect(0, 0, 15, 420, 50);
    popMatrix();

    //shovel head
    fill(80, 80, 80);
    rect(shovelX+35, shovelY+200, 80, 60, 2);
    triangle(shovelX+75, shovelY+230, shovelX-5, shovelY+230, shovelX+40, shovelY+260);
  }
  void drag(float initXPositionFixed, float initYPositionFixed) {
    if (overshovel) {
      shovelX = initXPositionFixed;
      shovelY = initYPositionFixed;
    }
  }

  void hover(int tempMouseX, int tempMouseY, boolean initOverBucket) {
    if ((tempMouseX <= shovelX+80) && (tempMouseX >= shovelX-10) && (tempMouseY <=shovelY+265) && (tempMouseY >= shovelY-200)&& !initOverBucket) {  //if the mouse is over the shovel let the boolean overshovel be true
      overshovel = true;
    } else {  //if the mouse is not over the shovel let the boolean overshovel be false
      overshovel = false;
    }
  }
}
