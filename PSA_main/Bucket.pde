class Bucket {

  float bucketX;
  float bucketY;


  Bucket(float initXPositionFixed, float initYPositionFixed) {
    bucketX = initXPositionFixed;
    bucketY = initYPositionFixed;
    bucketfill = false;
  }

  void display() {
    if (bucketfill) {
      fill(28, 163, 236);
    } else {
      fill(GRAY);
    }
    rect(bucketX, bucketY, 60, 60, 20);
    rect(bucketX, bucketY-10, 70, 70, 800);
  }

  void movebucket(float initXPositionFixed, float initYPositionFixed) {
    bucketX = initXPositionFixed;
    bucketY = initYPositionFixed;
    if ((mouseY >= height/2+100) && (mouseY<=height/2+300)) {
      bucketfill = true;
    }
    if ((mouseY >=height/2+100) && (mouseX >= (width/2-50)) && (mouseX<= (width/2+50))) {
      bucketfill = false;
      drown = true;
    }
  }
}
