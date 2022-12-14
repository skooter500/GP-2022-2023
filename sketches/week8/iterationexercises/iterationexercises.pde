void setup()
{
  size(500, 500);
  colorMode(HSB);
}

void keyPressed()
{
  if (key >= '0' && key <= '9')
  {
    mode = key - '0';
  }
  ccycle = 0;
}

int mode = 0;
int ccycle;

void draw()
{
  background(0);
  noStroke();
  switch (mode)
  {
    case 0:
    {
      int numBars = max(1, mouseX / 10);
      float gap = width / (float)numBars;
      float cgap = 255 / (numBars);
      for(int i = 0 ; i < numBars ; i ++)
      {
        //float c = (ccycle - (i * cgap)) % 256;
        float c = i * gap;
        fill(c, 255, 255);
        rect(i * gap, 0, gap, height);
      }
      break;
    }
     case 1:
     {
        int numBars = max(1, mouseX / 10);
        float gap = width / (float)numBars;
        float cgap = 255 / (numBars);
        int i = 0;
        while(i < numBars)
        {
          float c = (ccycle - (i * cgap)) % 256;
          fill(c, 255, 255);
          rect(i * gap, 0, gap, height);
          i ++;
        }
        break;
     }
     case 2:
     {
       int numCircles = max(1, mouseX / 10);
       float w = width / (float) numCircles;
       float r = w * 0.5f;
       float cgap = 255 / (float) (numCircles * 2);
       for(int row = 0 ; row < numCircles ; row ++)
       {
         for (int col = 0 ; col <numCircles ; col ++)
         {
           float c = ((row + col + ccycle) * cgap) % 256;
           fill(c, 255, 255);
           circle(r + w * col, r + w * row, w);
         }
       }
       break;
     }
     case 3:
     {
       break;
     }
      
     
  }
  ccycle += mouseY * 0.01f;
        
 
  
  
}
