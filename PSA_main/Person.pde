class Person {
  
  PShape leg1;
  PShape leg2;
  PShape leg3;
  PShape leg4;
  PShape shoe;
  PShape body;
  
  float xPosition;
  float yPosition;
  float legAngle;
  float legAngle2 = radians(80);
  float heightAdjust;
  
  Person(float initXPosition, float initYPosition) {
    xPosition = initXPosition;
    yPosition = initYPosition;
  }

  void load() {
    leg1 = loadShape("leg.svg");
    leg2 = loadShape("leg2.svg");
    leg3 = loadShape("leg.svg");
    leg4 = loadShape("leg2.svg");
    shoe = loadShape("shoe.svg");
    body = loadShape("coat.svg");
  }
  
  void display() {
    
    pushMatrix();
      translate(xPosition, yPosition); 
      rotate(radians(legAngle));
      shape(leg1, 30, -130, 90, 160);
    popMatrix();
    
    pushMatrix();
      translate(xPosition+30, yPosition-(350-heightAdjust)); 
      rotate(radians(legAngle2));
      shape(leg2, 0, 80, 80, 150);
    popMatrix();
    
     pushMatrix();
      translate((xPosition)-70, yPosition); 
      rotate(radians(legAngle));
      shape(leg3, 30, -130, 90, 160);
    popMatrix();
    
    pushMatrix();
      translate((xPosition+30)-70, yPosition-(350-heightAdjust)); 
      rotate(radians(legAngle2));
      shape(leg4, 0, 80, 80, 150);
    popMatrix();
    
    shape(shoe, xPosition+40, yPosition-40, 125, 40);
    shape(shoe, xPosition-60, yPosition-30, 125, 40);
    
    pushMatrix();
    translate(xPosition-10, yPosition-350); 
    rotate(radians(50));
    shape(body, 0, -80, 160, 300);
    popMatrix();
  }
  
  void update(int tempMouseY) {
    //Calculate angle between mouse and image for animation.
    legAngle = (tempMouseY/4)/6;
    legAngle2 = -legAngle;
    heightAdjust = tempMouseY/8.5;
    println(legAngle);
  }
  
  
}
