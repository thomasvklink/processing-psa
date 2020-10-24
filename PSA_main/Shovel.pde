class Shovel {

  float shovelX;
  float shovelY;


  Shovel(float initXPositionFixed, float initYPositionFixed) {
    shovelX = initXPositionFixed;
    shovelY = initYPositionFixed;
    overshovel = true;
  }
  void display() {
    if ((mouseX <= shovelX+80) && (mouseX >= shovelX-10) && (mouseY <=shovelY+265) && (mouseY >= shovelY-200)) {  //if the mouse is over the shovel let the boolean overshovel be true
      overshovel = true;
    } else {  //if the mouse is not over the bucket let the boolean overbucket be false
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
    if (!isBurning && drown && (mouseY >= height/2+35) && (mouseY<=height/2+300)) {  //if the fire is not burning anymore and the shovel is over the fire let stir become true
      stir = true;
    }
  }
}
