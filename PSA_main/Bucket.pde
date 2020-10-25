class Bucket {

  float bucketX;
  float bucketY;
  boolean bucketfill;


  Bucket(float initXPositionFixed, float initYPositionFixed) {
    bucketX = initXPositionFixed;
    bucketY = initYPositionFixed;
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

    if (bucketfill) {  
      fill(28, 163, 236);  //set the color to light blue
    } else {
      fill(154, 154, 154);  //set the color to gray
    }
    //inside of the bucket
    ellipse(bucketX, bucketY-20, 40, 25);
  }

  void drag(float initXPositionFixed, float initYPositionFixed) {
    bucketX = initXPositionFixed;
    bucketY = initYPositionFixed;
    if ((mouseY >= height/2+100) && (mouseY<=height/2+300)) {
      bucketfill = true;
      isBurning = false;
    }
    if ((mouseY >=height/2+200) && (mouseX >= (width/2-50)) && (mouseX<= (width/2+50))) {  //if the bucket is over the fire let the boolean bucketfill become false
      bucketfill = false;  //bucket is emptied
      isBurning = false;  //fire goes out
      drown = true;   //step drown completed
    }
     if (drown && stir && !isBurning && (mouseY >=height/2+200) && (mouseX >= (width/2-50)) && (mouseX<= (width/2+50))) {  //if the bucket is over the fireplace and drown and stir are true and isBurning is false let boolean drown 2 become true.
      drown2 = true;
     }
  }
}
