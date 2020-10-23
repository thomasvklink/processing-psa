class Fire {
   
  float xPosition;
  float yPosition;
  float fireX;
  float fireY;
 
 Fire(float initXPosition, float initYPosition, float initFireX, float initFireY) {
    xPosition = initXPosition;
    yPosition = initYPosition;
    fireX = initFireX;
    fireY = initFireY;
  }

  void display() {
   fill(255, 248, 36);
   rect(xPosition, yPosition, 20, 20);
  }
  
  void update() {
   xPosition = xPosition + fireX;
   yPosition = yPosition - fireY;
   
   if (yPosition < 500){
     yPosition = height/2+300;
   }
   
  }

}
