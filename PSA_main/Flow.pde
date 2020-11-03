/*
  This is a class Flow used to create small white rectangles (streams) that move from the left to the right.
 This class makes the water look like it is a flowing river.
 */

class Flow {

  //Variables for position, size and speed
  float flowX;
  float flowY;
  float flowSizeX;
  float flowSizeY;
  float flowSpeed;

  Flow(float initFlowX, float initFlowY, float initFlowSizeX, float initFlowSizeY, float initFlowSpeed) {
    flowX =  initFlowX;
    flowY =  initFlowY;
    flowSizeX = initFlowSizeX;
    flowSizeY = initFlowSizeY;
    flowSpeed = initFlowSpeed;
  }

  void display() {
    //make 1 stream
    fill(255);
    rect(flowX, flowY, flowSizeX, flowSizeY);
  }

  void update() {
    //update the position of the stream
    if (flowX > 1.05*width) {
      flowX = 0;
    } else {
      flowX = flowX + flowSpeed;
    }
  }
}
