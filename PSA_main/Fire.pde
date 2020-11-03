/*
  This is a class Fire used to create fire particles that move upwards from the logs (see class fireplace).
*/
class Fire {

  float xPosition;
  float yPosition;
  float fireY;
  float g = 248;
  float a = 255;
  float flameDeg;
  boolean isBurning;

  Fire(float initXPosition, float initYPosition, float initFireY, float initFlameDeg, boolean tempIsBurning) {
    xPosition = initXPosition;
    yPosition = initYPosition;
    fireY = initFireY;
    flameDeg = initFlameDeg;
    isBurning = tempIsBurning;
  }

  void display() { //Draw particle
    fill(255, g, 36, a);
    rect(xPosition, yPosition, 20, 20);
  }

  void update() {

    yPosition = yPosition - fireY;
    g = g - flameDeg; //Change color when particle as they moves up
    a = a - 1.3; //Change transparancy of particles as they move up

    if (yPosition < 500) { //Reset position, color and transparancy to keep the fire burning
      yPosition = height/2+300;
      g = 248;
      a = 255;
    }

    if (!isBurning) {
      a = a-10; //Fade out all particles when fire is put out (setting isBurining to false)
    }
  }
}
