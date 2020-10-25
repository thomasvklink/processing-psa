class Interface {
  
 //PShapes for SVG images to draw the leaves
  PShape leaves;

//Variables for position
  float xPositionFixed;
  float yPositionFixed;

  Interface(float initXPositionFixed, float initYPositionFixed) {
    xPositionFixed =  initXPositionFixed;
    yPositionFixed = initYPositionFixed;
  }

  void load() {
    leaves = loadShape("leaves.svg");
  }

  void display() {
    shape(leaves, xPositionFixed, yPositionFixed, width, height);

    //set the text for instructions and ending
    fill(80, 80, 80);
    textSize(32);
    text("Complete the steps to put out your campfire", 10, 30);
    if (drown) {
      fill(35, 220, 0);
    }
    text("step 1: drown your fire", 10, 100);
    if (drown && stir) {
      fill(57, 225, 20);
    } else {
      fill(255);
    }
    text("step 2: stir your fire", 10, 130);
    if (drown && stir && drown2) {
      fill(57, 225, 20);
    } else {
      fill(255);
    }
    text("step 3: drown your fire again", 10, 160);
    if (drown && stir && drown2 && feel) {
      fill(57, 225, 20);
    } else {
      fill(255);
    }
    text("step 4: feel if your fire is still hot", 10, 190);
    if (drown && stir && drown2 && feel) {
      textSize(60);
      fill(80, 80, 80);
      text("Congratulations! You succesfully put out your fire!", width/2, 90);
    }
  }
}
