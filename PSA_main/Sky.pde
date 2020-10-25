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
 
  }
}
