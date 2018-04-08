class Obstacle{
  
  float x,y,radius;
  float velocity=1;
  Obstacle(){
    radius=random(25,50);
    x=2*width+random(-width,width);
    y=random(0,height);
  }
  /*void setY(float predeterY){
    y=predeterY;
  }*/
  
  boolean move(){
    x-=velocity;
    if(x<=-radius){
      radius=random(25,50);
      x=2*width+random(-width,width);
      y=random(0,height);
      velocity+=0.1;
      return true;
    }
    return false;
  }
  
  boolean display(){
    if(move()){
      fill(255,0,0);
      ellipse(x,y,radius,radius);
      return true;
    }
    else{
      fill(255,0,0);
      ellipse(x,y,radius,radius);
      return false;
    }
  }
  
}
