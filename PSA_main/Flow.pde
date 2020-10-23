class Flow {

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
    fill(255);
    rect(flowX, flowY, flowSizeX, flowSizeY);
  }

  void update() {
    if (flowX > 1.05*width) {
      flowX = 0;
    } else {
      flowX = flowX + flowSpeed;
    }
  }
}
