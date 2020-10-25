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
    text("step 1: drown your fire", 10, 60);
    if (drown && stir) {
      fill(57, 225, 20);
    } else {
      fill(80, 80, 80);
    }
    text("step 2: stir your fire", 10, 90);
    if (drown && stir && drown2) {
      fill(57, 225, 20);
    } else {
      fill(80, 80, 80);
    }
    text("step 3: drown your fire again", 10, 120);
    if (drown && stir && drown2 && feel) {
      fill(57, 225, 20);
    } else {
      fill(80, 80, 80);
    }
    text("step 4: feel if your fire is still hot", 10, 150);
    if (drown && stir && drown2 && feel) {
      fill(57, 225, 20);
      String s = "Congratulations! You succesfully put out your fire!"; 
      fill(80, 80, 80);  
      textSize(40);
      text(s, (width/2), (height/2-300), 500, 300);  //text made in string s wraps itself within set box
    }
  }
}
