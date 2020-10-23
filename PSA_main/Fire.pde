class Fire {
   
  float xPosition;
  float yPosition;
  float fireY;
  float g = 248;
  float a = 255;
  float flameDeg;
 
 Fire(float initXPosition, float initYPosition, float initFireY, float initFlameDeg) {
    xPosition = initXPosition;
    yPosition = initYPosition;
    fireY = initFireY;
    flameDeg = initFlameDeg;
  }

  void display() {
   fill(255, g, 36,a);
   rect(xPosition, yPosition, 20, 20);
  }
  
  void update() {
   
   yPosition = yPosition - fireY;
   g = g - flameDeg;
   a = a - 1.3;
   
   if (yPosition < 500){
     yPosition = height/2+300;
     g = 248;
     a = 255;
   }
   
  }

}
