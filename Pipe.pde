class Pipe
{
  
  float x;
  float top;
  float bottom;
  float w = 40;

  Pipe() 
  {
    x=400+w;
    top = random(100, height/2);
    bottom = random(100, height/2);
  }

  boolean hits(Bird b) {
    if ((b.pos.x > x) && (b.pos.x < (x + w))) {
      if ((b.pos.y < (top + b.r)) || (b.pos.y > (height - bottom - b.r))) {
        return true;
      }
    }
    return false;
  }
void update()
{
x-=3;
}

  void show(boolean hit) {
    stroke(0);   
    if (hit) 
    {      
      fill(255, 0, 0);
    } 
    else 
    {
      fill(0,255,0);
    }    
    rect(x, 0, w, top); 
    rect(x, height - bottom, w, bottom);
  }
}