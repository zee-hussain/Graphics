class ObstacleSpawner{
  
  ArrayList<Obstacle> obstacles;
  int scoreCount;
  
  ObstacleSpawner(){
    obstacles= new ArrayList<Obstacle>();
    for (int i=0; i<10; i++){
      obstacles.add(new Obstacle());
    }
    scoreCount=0;
  }
  void levelUp(float speed){
    for (Obstacle obstacle : obstacles){
      obstacle=new Obstacle();
      obstacle.velocity=speed;
    }
  }
  
  void display(){
    for (Obstacle obstacle : obstacles){
      if(obstacle.display()){
        scoreCount+=10;
        fill(#1203FA);
        text("Score: " + scoreCount,width-80,40);
      }
      else {
        fill(#1203FA);
        text("Score: " + scoreCount,width-80,40);
      }
    }
  }
  
  
}
