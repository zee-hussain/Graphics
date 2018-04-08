class ObstacleSpawner{
  
  ArrayList<Obstacle> obstacles;
  
  ObstacleSpawner(){
    obstacles= new ArrayList<Obstacle>();
    for (int i=0; i<10; i++){
      obstacles.add(new Obstacle());
    }
  }
  
  void display(){
    for (Obstacle obstacle : obstacles){
      for (Obstacle checkO: obstacles){
        if(obstacle!=checkO){
          if(abs(obstacle.y-checkO.y)<obstacle.radius){
            checkO.collisionAdjust(obstacle.x,obstacle.y,obstacle.radius);
          }
        }
      }
      obstacle.display();
    }
  }
  
  
}
