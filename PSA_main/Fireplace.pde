/*
  This is a class Fireplace used to create the Fireplace that is seen on the screen most of the interactions happen with this Fireplace.\
 It is also used to call the class Fire.
 */

class Fireplace {
  //PShapes for SVG images to draw the fireplace and wooden logs
  PShape fireplace;
  PShape logs;
  Fire[] flames = new Fire[60]; //Use class Fire for particles

  //Variables for position and timer
  float xPosition;
  float yPosition;
  float bucketX;
  float bucketY;
  float shovelX;
  float shovelY;
  float timer;
  boolean isBurning;
  boolean drown;
  boolean stir;

  Fireplace(float initXPosition, float initYPosition) {
    xPosition = initXPosition;
    yPosition = initYPosition;

    //set booleans for logic
    isBurning=true;
    drown = false;
    stir = false;
  }

  void load() {
    //load the SVG files for the fireplace and wooden logs
    fireplace = loadShape("fireplace.svg");
    logs = loadShape("logs.svg");

    //create the Fire particles
    for (int i = 0; i < flames.length; i ++ ) {
      flames[i] = new Fire(random(xPosition-40, xPosition+40), yPosition-20, random(1, 3), random(1, 2.5), isBurning);
    }
  }

  void display() {

    //create the fireplace
    fill(121, 101, 97);
    ellipse(xPosition, yPosition, 300, 100);
    shape(fireplace, xPosition, yPosition, width, height);
    shape(logs, xPosition, yPosition-50, width, height);

    //update the timer
    if (!isBurning) {
      timer++;
    }

    //continue making flame particles as long as the timer does not exceed 100
    if (!(timer > 100)) {  
      for (int i = 0; i < flames.length; i ++ ) {
        flames[i].display();
        flames[i].update();
      }
    }
  }

  void check(float tempBucketX, float tempBucketY, boolean initDrown, boolean initBucketFill, float tempShovelX, float tempShovelY, boolean initStir) {
    bucketX = tempBucketX;
    bucketY = tempBucketY;
    drown = initDrown;
    bucket.bucketfill = initBucketFill;
    shovelX = tempShovelX;
    shovelY = tempShovelY;
    stir = initStir;
      println(stir);

    if (!initBucketFill && (tempBucketY >=yPosition-100) && (tempBucketY <=yPosition)&&(tempBucketX >= (xPosition-50)) && (tempBucketX<= (xPosition+50))) {  //if the bucket is over the fire let the boolean bucketfill become false
      isBurning = false;  //fire goes out
      drown = true;   //step drown completed
    }
    if (!isBurning && drown && (tempShovelY >=yPosition-300) && (tempShovelY <=yPosition+35)&&(tempShovelX >= (xPosition-50)) && (tempShovelX<= (xPosition+50))) {  //if the fire is not burning anymore and the shovel is over the fire let stir become true
      stir = true;
    }
  }
}
