void setup()
{
  size(500, 500);
  
  halfW = width / 2;
  halfH = height / 2;
  
  bw = width * 0.3f;
  bh = height * 0.2f;
}

float halfW;
float halfH;

int mode = 0;

float bw, bh;

void keyPressed()
{
  if (key >= '0' && key <= '9')
  {
    mode = key - '0';
  }
}

void draw()
{
  println(mode);
  background(255, 0, 0);
  fill(255, 0, 255);
    
  float left = halfW - (bw * 0.5f);
  float top = halfH - (bh * 0.5f);
  
  if (mouseX > left && mouseX < left + bw && mouseY > top && mouseY < top + bh)
  {
    fill(255, 0, 0);
  
  }
  rect(left, top, bw, bh);
  
  
}
