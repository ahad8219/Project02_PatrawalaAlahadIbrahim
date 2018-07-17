class Bird
{
  PVector pos;
  PVector vel;
  PVector acc;
  float r = 10;
  
  public Bird()
  {
   pos=new PVector(50, height/2);
   vel=new PVector(0, 0);
   acc=new PVector();
  }
  
   void applyForce(PVector force) 
  {
    acc.add(force);
  }   
  void update() 
  {
    applyForce(gravity);
    pos.add(vel);
    vel.add(acc);
    vel.limit(4);
    acc.mult(0);

    if (pos.y > height) 
    {
      pos.y = height;
      vel.mult(0);
    }
  }
  
    void drawBird() 
    {
    fill(cp.getColorValue());
    stroke(0);
    ellipse(pos.x, pos.y, 25, 20);
    fill(255);
    ellipse(pos.x+7, pos.y-3, 12, 10);
    fill(0);
    ellipse(pos.x+10, pos.y-5, 2, 2);
    fill(255, 75, 58);
    ellipse(pos.x+10, pos.y+3, 14, 4);
    ellipse(pos.x+10, pos.y+7, 14, 4);
    fill(215, 219, 186);
    ellipse(pos.x-10, pos.y, 14, 6);
  }  
}