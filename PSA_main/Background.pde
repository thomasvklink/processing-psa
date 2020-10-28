class Background {

  float xPosition;
  float yPosition;


  Sky sky;
  Trees trees;
  Water water;
  Flow[] streams = new Flow[20];
  Land land; 
  Fireplace fireplace;

  Background(float initXPosition, float initYPosition) {
    xPosition = initXPosition;
    yPosition = initYPosition;

    sky = new Sky(width/2, height/2);
    trees = new Trees(width/2, height/2);
    water = new Water(width/2, height/2);
    for (int i = 0; i < streams.length; i ++ ) {
      streams[i] = new Flow(random(0, width), random(height/2+100, height-height/4), random(20, 200), random(5, 8), random(0.1, 0.4));
    }
    land = new Land(width/2, height/2);
    fireplace = new Fireplace(width/2, height/2+300);

    //Loading images
    trees.load();
    water.load();
    land.load();
    fireplace.load();
  }
  
  void display(){
   sky.display();
  trees.display();
  water.display(); 
  for (int i = 0; i < streams.length; i++) { 
    streams[i].display();
    streams[i].update();
  }
  land.display();
  fireplace.display(); 
  }
}
