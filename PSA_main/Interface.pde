/*
  This is a class Interface used to create the front display of the interactive poster.
  It shows text and some leaves on the foreground it helps to give the poster a more in depth view.
*/

class Interface {

  //PShapes for SVG images to draw the leaves
  PShape leaves;
  PShape ribbon;

  //Variables for position
  float xPositionFixed;
  float yPositionFixed;
  
  float passMouseX;
  float passMouseY;
  
  //set booleans
  boolean stir;
  boolean drown2;
  boolean feel;
 
  Interface(float initXPositionFixed, float initYPositionFixed) {
    xPositionFixed =  initXPositionFixed;
    yPositionFixed = initYPositionFixed;
  }

  void load() {
    leaves = loadShape("leaves.svg");
    ribbon = loadShape("ribbon.svg");
  }
  
  void input(float tempMouseX, float tempMouseY){
    passMouseX = tempMouseX;
    passMouseY = tempMouseY;
  }
    void check(){
    //Since all interactions happen with the fireplace, these checkes are made withing a method in class Fireplace.
    fireplace.check(bucket.bucketX, bucket.bucketY, fireplace.drown, bucket.bucketfill, shovel.shovelX, shovel.shovelY, fireplace.stir, passMouseX, passMouseY, bucket.overbucket);
  }

  void display() {
    shape(leaves, xPositionFixed, yPositionFixed, width, height);

    //set the text for instructions and ending
    fill(255);
    textSize(28);
    text("Complete the steps to put out your campfire", 10, 60);
    if (fireplace.drown) {
      fill(35, 220, 0);
    }
    text("step 1: drown your fire", 10, 100);
    if (fireplace.drown && fireplace.stir) {
      fill(57, 225, 20);
    } else {
      fill(255);
    }
    text("step 2: stir your fire", 10, 130);
    if (fireplace.drown && fireplace.stir && fireplace.drown2) {
      fill(57, 225, 20);
    } else {
      fill(255);
    }
    text("step 3: drown your fire again", 10, 160);
    if (fireplace.drown && fireplace.stir && fireplace.drown2 && fireplace.feel) {
      fill(57, 225, 20);
    } else {
      fill(255);
    }
    text("step 4: feel if your fire is still hot", 10, 190);
    if (fireplace.drown && fireplace.stir && fireplace.drown2 && fireplace.feel) {
      shape(ribbon, xPositionFixed, yPositionFixed, width/2, height/4);
      textSize(60);
      fill(255);
      text("Congratulations!", xPositionFixed-250, yPositionFixed+25);
      fill(210);   
      textSize(35); 
      text("You put out your fire in the correct way!", xPositionFixed-350, yPositionFixed+100);  //text wraps itself within set box
    }
  }
  
}
