class Flow {
      
      float flowX;
      float flowY;
      float flowSizeX;
      float flowSizeY;
      
      Flow(float initFlowX, float initFlowY, float initFlowSizeX, float initFlowSizeY) {
        flowX =  initFlowX;
        flowY =  initFlowY;
        flowSizeX = initFlowSizeX;
        flowSizeY = initFlowSizeY;
      }
      
      void display() {
        fill(255);
        rect(flowX, flowY, flowSizeX, flowSizeY);
      }
    }
