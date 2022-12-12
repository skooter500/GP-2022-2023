void setup()
{
  fullScreen(P3D, SPAN);
  //size(500, 500);
  smooth();
  initialiseSnow();
  colorMode(HSB);
}

void initialiseSnow()
{
  for(int i = 0 ; i < snowCount ; i ++)
  {
    resetParticle(i);
  }
}

int snowCount = 2000;
float[] x = new float[snowCount];
float[] y = new float[snowCount];
int[] c = new int[snowCount];
float[] yspeed = new float[snowCount];

void draw()
{
  //background(0);
  strokeWeight(5);
  colorMode(RGB);
  fill( 0, 6);  
  colorMode(HSB);
  rect(0, 0, width, height);
  for (int i = 0 ; i < snowCount ; i ++)
  {
    stroke(c[i], 255, 255);
    y[i]+= yspeed[i];
    //x[i] = lerp( x[i], x[i] + random(-20, 20), 0.1f);
    
    float f = map(noise(42 + (y[i] * 0.005f)), 0, 1, -100, 100);
    
    point(x[i] + f, y[i]);
    
    if (y[i] > height)
    {
      resetParticle(i);
    }
  }
}
  
void resetParticle(int i)
{
  x[i] = random(0, width);
  y[i] = - random(0, height);
  yspeed[i] = random(0.5f, 1);
  c[i] = (int) map(x[i], 0, width, 0, 255);
}
