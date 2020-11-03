/*
  This is a class Interface used to create the front display of the interactive poster.
  It shows text and some leaves on the foreground it helps to give the poster a more in depth view.
*/

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
      textSize(60);
      fill(80, 80, 80);
      String s = "Congratulations! You succesfully put out your fire!";  
      fill(80, 80, 80);   
      textSize(40); 
      text(s, (width/2), (height/2-200), 500, 300);  //text wraps itself within set box
    }
  }
  
  void check(){
    
  }
}
