ObstacleSpawner spawn;

void setup(){
  size(600,600);
  spawn= new ObstacleSpawner();
}

void draw(){
  background(225);
  spawn.display();
}
