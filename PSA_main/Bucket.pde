/*
  This is a class bucket to create the bucket which will be filled with water.
 this bucket is necessary for step 1 and 3 of the process of putting out your campfire.
 */
class Bucket {


  //Variables for position and boolean bucketfill
  float bucketX;
  float bucketY;
  float fireX;
  float fireY;
  float waterX;
  float waterY;
  boolean overbucket;
  boolean bucketfill;

  Bucket(float initXPosition, float initYPosition) {
    bucketX = initXPosition;
    bucketY = initYPosition;
    
    //set booleans for logic
    bucketfill = false;
    overbucket = false;
  }

  void display() {

    fill(210, 221, 224); // set the color to silver

    // outside of the bucket
    rect(bucketX, bucketY, 45, 45, 15);
    rect(bucketX, bucketY-10, 45, 45, 20);
    rect(bucketX, bucketY-15, 50, 50, 20);
    rect(bucketX, bucketY-15, 50, 50, 25);

    if (bucketfill) {  //if the boolean bucketfill is true
      fill(28, 163, 236);  //set the color to light blue
    } else {  //if boolean bucketfill is false
      fill(154, 154, 154);  //set the color to gray
    }
    //inside of the bucket
    ellipse(bucketX, bucketY-20, 40, 25);
    
  }

  void drag(float tempMouseX, float tempMouseY) {
    if (overbucket){
    bucketX = tempMouseX;
    bucketY = tempMouseY;
   }

    
    //if (drown && stir && !isBurning && (bucketY >=fireY-100) && (bucketY <=fireY) && (bucketX >= (fireX-50)) && (bucketX<= (fireX+50))) {  //if the bucket is over the fireplace and drown and stir are true and isBurning is false let boolean drown 2 become true.
   //   drown2 = true;  //step drown2 completed
   // }
  }
  
  void hover(int tempMouseY, int tempMouseX){
    
    if ((tempMouseX <= bucketX+50) && (tempMouseX >= bucketX-50) && (tempMouseY <=bucketY+5) && (tempMouseY >= bucketY-20)) { //if the mouse is over the bucket let the boolean overbucket be true 
      overbucket = true; 
    } else {  //if the mouse is not over the bucket let the boolean overbucket be false 
      overbucket = false; 
    } 
    
  } 

  void filled(float tempFireplaceX, float tempFireplaceY, float tempWaterX, float tempWaterY) {
    
    fireX = tempFireplaceX;
    fireY = tempFireplaceY;
    waterX = tempWaterX;
    waterY = tempWaterY;
    
    //if the bucket is over the river let it fill up
    if ((bucketY >= waterY+100) && (bucketY<=waterY+300)) { //if the bucket is over the river let the boolean bucketfill become true
      bucketfill = true;  //bucket is filled
    }
    
    if ((bucketY >=fireY-100) && (bucketY <=fireY)&&(bucketX >= (fireX-50)) && (bucketX<= (fireX+50))) {  //if the bucket is over the fire let the boolean bucketfill become false
      bucketfill = false;  //bucket is emptied
    }
  }
}
