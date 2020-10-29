/* this is a class bucket to create the bucket which will be filled with water.
  this bucket is necessary for step 1 and 3 of the process of putting out your campfire.
*/
class Bucket {

  //Variables for position and boolean bucketfill
  float bucketX;
  float bucketY;
  boolean bucketfill;


  Bucket(float initXPositionFixed, float initYPositionFixed) {
    bucketX = initXPositionFixed;
    bucketY = initYPositionFixed;

    //set booleans for logic
    bucketfill = false;
    overbucket = false;
  }

  void display() {
    if ((mouseX <= bucketX+50) && (mouseX >= bucketX-50) && (mouseY <=bucketY+5) && (mouseY >= bucketY-20)) { //if the mouse is over the bucket let the boolean overbucket be true
      overbucket = true;
    } else {  //if the mouse is not over the bucket let the boolean overbucket be false
      overbucket = false;
    }
    fill(210, 221, 224); // set the color to silver

    // outside of the bucket
    rect(bucketX, bucketY, 45, 45, 15);
    rect(bucketX, bucketY-10, 45, 45, 20);
    rect(bucketX, bucketY-15, 50, 50, 20);
    rect(bucketX, bucketY-15, 50, 50, 25);

    if (bucketfill) {  //if the boolean bucketfill is true
      fill(28, 163, 236);  //set the color to light blue
    } else {  //if boolean bucketfill is false
      fill(154, 154, 154);  //set the color to gray
    }
    //inside of the bucket
    ellipse(bucketX, bucketY-20, 40, 25);
  }

  void drag(float initXPositionFixed, float initYPositionFixed) {
    bucketX = initXPositionFixed;
    bucketY = initYPositionFixed;

    //if the bucket is over the river let it fill up
    if ((initYPositionFixed >= height/2+100) && (initYPositionFixed<=height/2+300)) {
      bucketfill = true;
    }
    if ((initYPositionFixed >=height/2+200) && (initYPositionFixed <=height/2+300)&&(initXPositionFixed >= (width/2-50)) && (initXPositionFixed<= (width/2+50))) {  //if the bucket is over the fire let the boolean bucketfill become false
      bucketfill = false;  //bucket is emptied
      isBurning = false;  //fire goes out
      drown = true;   //step drown completed
    }
    if (drown && stir && !isBurning && (initYPositionFixed >=height/2+200) && (initXPositionFixed >= (width/2-50)) && (initXPositionFixed<= (width/2+50))) {  //if the bucket is over the fireplace and drown and stir are true and isBurning is false let boolean drown 2 become true.
      drown2 = true;  //step drown2 completed
    }
  }
}
