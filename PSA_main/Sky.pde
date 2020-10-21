class Sky {
  float xPositionFixed;
  float yPositionFixed;
  

  Sky(float initXPositionFixed, float initYPositionFixed) {
    xPositionFixed = initXPositionFixed;
    yPositionFixed = initYPositionFixed;
  }

  void display() {
    
    
    //for (int i = 0; i<height; i++) {
      for (int c = 0; c<height; c++)
      {
        stroke(0.5*c,c+250,c+250);
        line(0,c,width,c); 
      } 
    //}
    
  }
  
}
