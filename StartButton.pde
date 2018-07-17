class StartButton
{

int rectX, rectY;      // Position of square button
boolean rectOver = false;

void drawButton() 
{

rectX = width/2-200;
rectY = height/2+20; 
rect(rectX, rectY, 90, 50); 
}

void start1()
{
    if (mouseX >= bu.rectX && mouseX <= bu.rectX+90 && 
      mouseY >= bu.rectY && mouseY <= bu.rectY+50)
   {   
   flush();
   score=0;
   gameState=1;
   } 
}

}  