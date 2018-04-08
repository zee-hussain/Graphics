class Obstacle{
  
  float x,y,radius;
  float velocity=1;
  Obstacle(){
    radius=random(25,50);
    x=2*width+random(-width,width);
    y=width/2 + random(-width/2,width/2);
  }
  void collisionAdjust(float otherx,float othery, float r){
    while(abs(othery-y)<r){
      if(abs(x-otherx)<4*r){
        y++;
      }
    }
  }
  
  void move(){
    x-=velocity;
    if(x<=-radius){
      radius=random(25,50);
      x=2*width+random(-width,width);
      y=width/2 + random(-width/2,width/2);
      velocity+=1;
    }
  }
  
  void display(){
    move();
    ellipse(x,y,radius,radius);
  }
  
}
