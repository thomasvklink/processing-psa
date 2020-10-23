class Bucket {

  float bucketX;
  float bucketY;
  boolean bucketfill;


  Bucket(float initXPositionFixed, float initYPositionFixed) {
    bucketX = initXPositionFixed;
    bucketY = initYPositionFixed;
    bucketfill = false;
  }

  void display() {
    fill(210,221,224);
    rect(bucketX, bucketY, 45, 45, 15);
    rect(bucketX, bucketY-10, 45, 45, 20);
    rect(bucketX, bucketY-15, 50, 50, 20);
    rect(bucketX, bucketY-15, 50, 50, 25);
    if (bucketfill) {
      fill(28, 163, 236);
    } else {
      fill(154,154,154);
    }
    ellipse(bucketX, bucketY-20, 40, 25);
  }

  void movebucket(float initXPositionFixed, float initYPositionFixed) {
    bucketX = initXPositionFixed;
    bucketY = initYPositionFixed;
    if ((mouseY >= height/2+100) && (mouseY<=height/2+300)) {
      bucketfill = true;
    }
    if ((mouseY >=height/2+200) && (mouseX >= (width/2-50)) && (mouseX<= (width/2+50))) {
      bucketfill = false;
    }
  }
}
