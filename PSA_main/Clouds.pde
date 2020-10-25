class Clouds {

  float cloudX;
  float cloudY;
  float speedX = 1;

  Clouds(float initXPositionFixed, float initYPositionFixed) {
    cloudX = initXPositionFixed;
    cloudY = initYPositionFixed;
  }

  void display() {
    noStroke();
    fill(255);

    //cloud 1
    ellipse(cloudX, cloudY-300, 100, 100);
    rect(cloudX+50, cloudY-300, 100, 100, 300);
    ellipse(cloudX+100, cloudY-300, 100, 100);
    rect(cloudX+150, cloudY-300, 100, 100, 300);
    ellipse(cloudX+200, cloudY-300, 100, 100);
    rect(cloudX+50, cloudY-350, 100, 100, 300);
    ellipse(cloudX+100, cloudY-350, 100, 100);
    rect(cloudX+170, cloudY-350, 100, 100, 300);

    //cloud 2
    ellipse(cloudX-300, cloudY-400, 100, 100);
    rect(cloudX-350, cloudY-400, 100, 100, 300);
    ellipse(cloudX-400, cloudY-400, 100, 100);
    rect(cloudX-450, cloudY-400, 100, 100, 300);
    ellipse(cloudX-500, cloudY-400, 100, 100);
    rect(cloudX-350, cloudY-450, 100, 100, 300);
    ellipse(cloudX-400, cloudY-450, 100, 100);
    rect(cloudX-450, cloudY-450, 100, 100, 300);

    //cloud 3
    ellipse(cloudX+600, cloudY-350, 100, 100);
    rect(cloudX+650, cloudY-350, 100, 100, 300);
    ellipse(cloudX+700, cloudY-350, 100, 100);
    rect(cloudX+750, cloudY-350, 100, 100, 300);
    ellipse(cloudX+800, cloudY-350, 100, 100);
    rect(cloudX+650, cloudY-400, 100, 100, 300);
    ellipse(cloudX+700, cloudY-400, 100, 100);
    rect(cloudX+750, cloudY-400, 100, 100, 300);

    //cloud 4
    ellipse(cloudX-900, cloudY-350, 100, 100);
    rect(cloudX-950, cloudY-350, 100, 100, 300);
    ellipse(cloudX-1000, cloudY-350, 100, 100);
    rect(cloudX-1050, cloudY-350, 100, 100, 300);
    ellipse(cloudX-1100, cloudY-350, 100, 100);
    rect(cloudX-950, cloudY-400, 100, 100, 300);
    ellipse(cloudX-1000, cloudY-400, 100, 100);
    rect(cloudX-1050, cloudY-400, 100, 100, 300);
  }

  void update() {
    if (cloudX > 1.6*width) {
      cloudX = -850;
    } else {
      cloudX++;
    }
  }
}
