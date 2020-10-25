class Sky {
  float xPositionFixed;
  float yPositionFixed;
  Clouds cloud;


  Sky(float initXPositionFixed, float initYPositionFixed) {
    xPositionFixed = initXPositionFixed;
    yPositionFixed = initYPositionFixed;
    cloud = new Clouds(random(0, width), height/2);
  }

  void display() {
    for (int c = 0; c<height; c++)
    {
      stroke(0.5*c, c+250, c+250);
      line(0, c, width, c);
    } 
    cloud.display();
    cloud.update();
    fill(80, 80, 80);
    textSize(32);
    text("Complete the steps to put out your campfire", 10, 30);
    if (drown) {
      fill(35, 220, 0);
    }
    text("step 1: drown your fire", 10, 60);
    if (drown && stir) {
      fill(57, 225, 20);
    } else {
      fill(80, 80, 80);
    }
    text("step 2: stir your fire", 10, 90);
    if (drown && stir && drown2) {
      fill(57, 225, 20);
    } else {
      fill(80, 80, 80);
    }
    text("step 3: drown your fire again", 10, 120);
    if (drown && stir && drown2 && feel) {
      fill(57, 225, 20);
    } else {
      fill(80, 80, 80);
    }
    text("step 4: feel if your fire is still hot", 10, 150);
    if (drown && stir && drown2 && feel) {
      textSize(60);
      fill(80, 80, 80);
      text("Congratulations! You succesfully put out your fire!", width/2, 90);
    }
  }
}
