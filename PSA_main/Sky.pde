class Sky {
  float xPositionFixed;
  float yPositionFixed;

  Sky(float initXPositionFixed, float initYPositionFixed) {
    xPositionFixed =  initXPositionFixed;
    yPositionFixed = initYPositionFixed;
    initXPositionFixed = width/2;
    initYPositionFixed = height/2;
  }

  void display() {
    for (int i = 0; i<height; i++) 
    {
      //stroke(r,g,b);
      //line(0,i,width,i);
      for (int c = 0; c<height; c++)
      {
        stroke(0.5*i, c, c);
        line(0, i, width, i);
      }
    }
  }
}
