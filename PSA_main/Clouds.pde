class Clouds {
  
  float cloudX;
  float cloudY;
  float speedX;

  Clouds(float initXPositionFixed, float initYPositionFixed) {
    cloudX =  initXPositionFixed;
    cloudY = initYPositionFixed;
    initXPositionFixed = width/2;
    initYPositionFixed = height/2;
    speedX = random(0, 10);
  }
  
  void display()  {
   noStroke();
   fill(255,255,255);
   
   //cloud
   ellipse(cloudX, cloudY-300, 100,100);
   rect(cloudX+50, cloudY-300, 100,100, 300);
   ellipse(cloudX+100, cloudY-300, 100,100);
   rect(cloudX+150, cloudY-300, 100,100, 300);
   ellipse(cloudX+200, cloudY-300, 100,100);
   rect(cloudX+50, cloudY-350, 100,100, 300);
   ellipse(cloudX+100, cloudY-350, 100,100);
   rect(cloudX+170, cloudY-350, 100,100, 300);
  }
  
  void update(){
   cloudX = cloudX + speedX; 
   println(cloudX);
  }
}
