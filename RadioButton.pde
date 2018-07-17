class RadioButton
 {
int circleX, circleY;  // Position of circle button
int circleSize = 50;   // Diameter of circle
boolean circleOver = false;
int quantity = 300;
int count=50;
float [] xPosition = new float[quantity];
float [] yPosition = new float[quantity];
int [] flakeSize = new int[quantity];
int [] direction = new int[quantity];
int minFlakeSize = 1;
int maxFlakeSize = 5;
float disX = circleX - mouseX;
float disY = circleY - mouseY;

void drawButton() 
{
  circleX = width/2;
  circleY = height/2+50;
  //pushMatrix();
  fill(255);
  ellipseMode(CENTER);
  ellipse(circleX, circleY, circleSize, circleSize);
  text("Press to enable snow",circleX-25,circleY+50);
  //popMatrix();
}

boolean snow() 
{
   for(int i = 0; i < quantity; i++) {
    flakeSize[i] = round(random(minFlakeSize, maxFlakeSize));
    xPosition[i] = random(0, width);
    yPosition[i] = random(0, height);
    direction[i] = round(random(0, 1));
   }
  if (sqrt(sq(disX) + sq(disY)) < 50/2 )
  {
   count=count+50;
   fill(0);
   ellipseMode(CENTER);
   ellipse(circleX, circleY, circleSize-15, circleSize-15);
   snowfall(); 
   return true;
  } 
  else
  {
  return false;
  }
} 
 
 void snowfall()
 {  
   
   fill(255); 
 for(int j = 0; j < xPosition.length; j++) 
 { 
    ellipse(xPosition[j], yPosition[j], flakeSize[j], flakeSize[j]);
    
    if(direction[j] == 0)
    {
      xPosition[j] += map(flakeSize[j], minFlakeSize, maxFlakeSize, .1, .5);
    } else {
      xPosition[j] -= map(flakeSize[j], minFlakeSize, maxFlakeSize, .1, .5);
    }
    
    yPosition[j] += flakeSize[j] + direction[j]; 
    
    if(xPosition[j] > width + flakeSize[j] || xPosition[j] < -flakeSize[j] || yPosition[j] > height + flakeSize[j]) {
      xPosition[j] = random(0, width);
      yPosition[j] = -flakeSize[j];
    }
    
  }
 }
}