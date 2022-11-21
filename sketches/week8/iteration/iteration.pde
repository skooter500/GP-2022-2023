void setup()
{
  size(500, 500);
}

void draw()
{
  background(0);
  stroke(255);
  line(50, 100, 200, 100);
  line(50, 120, 200, 120);
  line(50, 140, 200, 140);
  line(50, 160, 200, 160);
  line(50, 180, 200, 180);
  
  // while
  // for
  // do while
  
  float y = 100;
  while(y <= 180)
  {
    line(220, y, 320, y);
    //y += 20;
  }
  
  
}
