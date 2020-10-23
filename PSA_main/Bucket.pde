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
    if (bucketfill) {
      fill(28, 163, 236);
    } else {
      fill(GRAY);
    }
    rect(bucketX, bucketY, 50, 50, 100);
  }

  void movebucket(float initXPositionFixed, float initYPositionFixed) {
    bucketX = initXPositionFixed;
    bucketY = initYPositionFixed;
    if ((mouseY >= height/2+100) && (mouseY<=height/2+300)) {
      bucketfill = true;
    }
  }
}
