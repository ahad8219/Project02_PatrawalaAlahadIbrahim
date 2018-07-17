class stickMan extends Pipe
{ 
  void drawStick()
  {
stroke(128);
translate(width/2+250,height/2+120);
fill(255,224,189);
ellipse (150,60,50,50);
fill(1);
strokeWeight(5);
point (140,60);
point (160,60);
line(140,70,165,70);
fill(255,0,0);
rectMode (CENTER);
fill(128,128,128);
rect (150,135,50,100);
line (125,85,100,160);
line (175,85,200,160);
line (130,185,130,250);
line (130,250,125,250);
line (170,185,170,250);
line (170,250,175,250);
  }
}