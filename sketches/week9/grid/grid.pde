void setup()
{
  size(500, 500);
}

void draw()
{
  float border = width * 0.1f;
  int start = -5, end = 5;
  float dist = (end - start);
  float gap = (width - (border * 2)) / dist;
  for(int i = start ; i <= end ; i++)
  {
    float x = border + (i - start) * gap;
    line(border, x, width - border, x);
    line(x, border, x, height - border);
    textAlign(CENTER, CENTER);
    fill(0);
    text(i, x, border * 0.5f);
    text(i, border * 0.5f, x);
  }
  
}
