class JumpButton
{

int x1,x2,x3,x4,x5;

void drawButton() 
{
x1=3;
x2=53;
x3=30;
x4=57;
x5=39;

//scale(0.3);
beginShape();
vertex(x1,x2);
vertex(x3,x1);
vertex(x4,x2);
vertex(x3,x5);
endShape(CLOSE);
upButton();
} 

void upButton()
{
    if (mouseX >= x1 && mouseX <= x4 && 
      mouseY >= x1 && mouseY <= x2)
   {   
    PVector up = new PVector(0, -15);
    b.applyForce(up);
  } 
}
}  