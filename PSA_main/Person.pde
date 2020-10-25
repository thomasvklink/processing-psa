class Person {

  //PShapes for SVG images to make the body of the person
  PShape leg1;
  PShape leg2;
  PShape leg3;
  PShape leg4;
  PShape shoe;
  PShape body;
  PShape head;
  PShape arm;

  //Variables for position, angles of joints and adjustment to width and height during movements
  float xPosition;
  float yPosition;
  float angle;
  float angle2;
  float headAngle;
  float armAngle;
  float heightAdjust;
  float widthAdjust;

  Person(float initXPosition, float initYPosition) {
    xPosition = initXPosition;
    yPosition = initYPosition;
  }

  //Load all the SVG's for the body
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
    //Matrix for lower right leg
    pushMatrix();
    translate((xPosition+200), yPosition); 
    rotate(radians(angle));
    shape(leg1, 30, -130, 90, 160);
    popMatrix();
    //Matrix for upper right leg
    pushMatrix();
    translate((xPosition+230)+widthAdjust, yPosition-(350-heightAdjust)); 
    rotate(radians(angle2));
    shape(leg2, 0, 80, 80, 150);
    popMatrix();
    //Matrix for lower left leg
    pushMatrix();
    translate((xPosition+130), yPosition); 
    rotate(radians(angle));
    shape(leg3, 30, -130, 90, 160);
    popMatrix();
    //Matrix for upper right leg
    pushMatrix();
    translate((xPosition+160)+widthAdjust, yPosition-(350-heightAdjust)); 
    rotate(radians(angle2));
    shape(leg4, 0, 80, 80, 150);
    popMatrix();
    //Display the shoes
    shape(shoe, (xPosition+230)+widthAdjust, (yPosition-50)+heightAdjust*0.2, 100, 40);
    shape(shoe, (xPosition+160)+widthAdjust*0.8, yPosition-50, 100, 40);
    //Matrix for the head of the man
    pushMatrix();
    translate((xPosition+210)+(widthAdjust*2.8), yPosition-(515-(heightAdjust*1.4))); 
    rotate(radians(headAngle));
    shape(head, 0, -80, 110, 110);
    popMatrix();
    //Matrix for the body of the man
    pushMatrix();
    translate((xPosition+190)+widthAdjust, yPosition-(350-heightAdjust)); 
    rotate(radians(angle));
    shape(body, 0, -80, 160, 290);
    popMatrix();
    //Matrix for the arm of the man
    pushMatrix();
    translate((xPosition+180)+(widthAdjust*3), yPosition-(500-(heightAdjust*1.4))); 
    rotate(armAngle);
    shape(arm, 50, 70, 150, 250);
    popMatrix();
  }

  void update(int tempMouseY, int tempMouseX) {
    //When mouse is between set limits, update the angles of the joints in the legs, head and arm in relation to the height of the mouse.
    if (tempMouseX > xPosition && tempMouseX < xPosition + 600) {
      angle = (tempMouseY/4)/6;
      angle2 = -angle; //The upper leg rotates in the opposite direction as the lower
      headAngle = angle*1.2; //Head rotates slightly faster then other joints
      heightAdjust = tempMouseY/8.5; // Make adjustment to the height of the limbs in relation to the y position of the mouse
      widthAdjust = tempMouseY/20;  // Make adjustment to the x position of the limbs in relation to the y position of the mouse
      armAngle = atan2(tempMouseY-yPosition, tempMouseX-xPosition) + radians(20);

      if (angle > 28) { //Limit crouching animation after set point (angle of 25 deg)
        angle = 28;
        angle2 = -28;
        heightAdjust = 80;
        widthAdjust = 34;
      }

      if (armAngle > 0.76) { //Limit movement of the arm
        armAngle = 0.76;
      }
    }
    if (drown && stir && !isBurning && drown2 && (tempMouseY >=height/2+200) && (tempMouseX >= (width/2-50)) && (tempMouseX<= (width/2+50))) {  //if the person is over the fire and all other steps have been done, let boolean feel become true.
      feel = true;
    }
  }
}
