/*
  This is a class Shovel used to create the shovel that is moveable by dragging.
  This shovel is needed for the 2nd step of the process of putting out your campfire correctly.
*/

class Shovel {

  //Variables for position
  float shovelX;
  float shovelY;


  Shovel(float initXPosition, float initYPosition) {
    shovelX = initXPosition;
    shovelY = initYPosition;

    //call global boolean out main class
    overshovel = true;
  }
  void display() {
    if ((mouseX <= shovelX+80) && (mouseX >= shovelX-10) && (mouseY <=shovelY+265) && (mouseY >= shovelY-200)) {  //if the mouse is over the shovel let the boolean overshovel be true
      overshovel = true;
    } else {  //if the mouse is not over the shovel let the boolean overshovel be false
      overshovel = false;
    }
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
    shovelX = initXPositionFixed;
    shovelY = initYPositionFixed;
    
    //if (!isBurning && drown && (initYPositionFixed >= height/2+35) && (initYPositionFixed<=height/2+300) && (initXPositionFixed >= (width/2-50)) && (initXPositionFixed<= (width/2+50))) {  //if the fire is not burning anymore and the shovel is over the fire let stir become true
    //  stir = true;
    // }
  }
}
