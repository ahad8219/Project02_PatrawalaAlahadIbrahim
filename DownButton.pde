class DownButton
{

int x1,x2,x3,x4,x5;

void drawButton() 
{
x1=33;
x2=36;
x3=60;
x4=50;
x5=87;
//scale(0.3);
beginShape();
vertex(x1+30,x2);
vertex(x3+30,x4);
vertex(x5+30,x2);
vertex(x3+30,x5);
endShape(CLOSE);
} 

void downButton()
{
    if (mouseX >= x1 && mouseX <= x4 && 
      mouseY >= x1 && mouseY <= x2)
   {   
    PVector up = new PVector(0, 15);
    b.applyForce(up);
  } 
}
}  