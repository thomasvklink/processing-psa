class Person {
  
  PShape leg1;
  PShape leg2;
  PShape leg3;
  PShape leg4;
  PShape shoe;
  PShape body;
  PShape head;
  PShape arm;
  
  float xPosition;
  float yPosition;
  float angle;
  float angle2;
  float headAngle;
  float heightAdjust;
  float widthAdjust;
  
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
    head = loadShape("head.svg");
    arm = loadShape("arm.svg");
  }

  void display() {
    
    pushMatrix();
      translate(xPosition, yPosition); 
      rotate(radians(angle));
      shape(leg1, 30, -130, 90, 160);
    popMatrix();
    
    pushMatrix();
      translate((xPosition+30)+widthAdjust, yPosition-(350-heightAdjust)); 
      rotate(radians(angle2));
      shape(leg2, 0, 80, 80, 150);
    popMatrix();
    
     pushMatrix();
      translate((xPosition-70), yPosition); 
      rotate(radians(angle));
      shape(leg3, 30, -130, 90, 160);
    popMatrix();
    
    pushMatrix();
      translate((xPosition+30-70)+widthAdjust, yPosition-(350-heightAdjust)); 
      rotate(radians(angle2));
      shape(leg4, 0, 80, 80, 150);
    popMatrix();
    
    shape(shoe, (xPosition+30)+widthAdjust, (yPosition-50)+heightAdjust*0.2, 100, 40);
    shape(shoe, (xPosition-40)+widthAdjust*0.8, yPosition-50, 100, 40);
    
    pushMatrix();
    translate((xPosition+10)+(widthAdjust*3), yPosition-(515-(heightAdjust*1.4))); 
    rotate(radians(headAngle));
    shape(head, 0, -80, 110, 110);
    popMatrix();
    
    
    
    pushMatrix();
    translate((xPosition-10)+widthAdjust, yPosition-(350-heightAdjust)); 
    rotate(radians(angle));
    shape(body, 0, -80, 160, 290);
    popMatrix();
    
    pushMatrix();
    translate((xPosition-10)+widthAdjust, yPosition-(350-heightAdjust)); 
    rotate(radians(angle));
    shape(arm, 50, -80, 150, 250);
    popMatrix();
    
  }

void update(int tempMouseY, int tempMouseX) {
    if (tempMouseX > xPosition && tempMouseX < xPosition + 600){
      angle = (tempMouseY/4)/6;
      angle2 = -angle;
      headAngle = angle*1.2;
      heightAdjust = tempMouseY/8.5;
      widthAdjust = tempMouseY/20;
      
      if (angle > 28){
        angle = 28;
        angle2 = -28;
        heightAdjust = 80;
        widthAdjust = 34;
      }
      
    }
    
  }

  void drag(int tempMouseX, int tempMouseY) {
    if (drown && stir && !isBurning && drown2 && (tempMouseY >=height/2+200) && (tempMouseX >= (width/2-50)) && (tempMouseX<= (width/2+50))) {  //if the person is over the fire and all other steps have been done, let boolean feel become true.
      feel = true;
    }
  }
  
  
}
