class Interface {

  PShape leaves;

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
       fill(255);
    textSize(28);
    text("Complete the steps to put out your campfire", 10, 60);
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
      fill(57, 225, 20);
      String s = "Congratulations! You succesfully put out your fire!"; 
      fill(255);  
      textSize(40);
      text(s, (width/2), (height/2-300), 500, 300);  //text wraps itself within set box
    }
  }
}
