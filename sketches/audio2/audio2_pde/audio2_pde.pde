import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

void setup()
{
  size(512, 512);
  
  m = new Minim(this);
  
  //ap = m.loadFile("GE1 Examples 2022_Assets_Audio_Gorgon City - All Four Walls ft. Vaults.mp3", 512);
  //ab = ap.mix;
  //ap.play();
  ai = m.getLineIn(Minim.MONO, bufferSize, 44100, 16);
  ab = ai.mix;
  
  fft = new FFT(bufferSize, 44100); //
 
}

int bufferSize = 512;

Minim m;
AudioInput ai;
AudioPlayer ap;
AudioBuffer ab;

FFT fft;

float lerpedAverage = 0;

float[] lerpedBuffer = new float[bufferSize];

float map1(float a, float b, float c, float d, float e)
{
  float r1 = c - b;
  float r2 = e - d;
  float r3 = a - b;
  
  return d + (r3 / r1) * r2; 
}

float lerp1(float a, float b, float t)
{
  return a + (b-a) * t;
}

int countZeroCrossings()
{
  int count = 0;
  for(int i = 1 ; i < ab.size() ; i ++)
  {
    if ((ab.get(i - 1) > 0) && (ab.get(i) <= 0))
    {
      count ++;
    }
  }
  return count;
}

void draw()
{
  textSize(30);
  // lerp(a, b, t)
  // map(a, b, c, d, e)
  // min(a, b)
  // max(a, b)
  // smoothstep
  // abs
  
  //float m = map(1, 0, 100, 200, 400);
  
  
  background(0);
  colorMode(HSB);
  stroke(255);
  float half = height / 2;
  float total = 0;
  for (int i = 0 ; i < ab.size(); i ++)
  {
    float a = abs(ab.get(i));
    total += abs(a);
    float c = map(i, 0, ab.size(), 0, 255);
    stroke(c, 255, 255);
    lerpedBuffer[i] = lerp(lerpedBuffer[i], ab.get(i), 0.1f);
    //line(i, half, i, half + (lerpedBuffer[i] * half * 4));
    //line(i, half - , i, half + (lerpedBuffer[i] * half * 4));
  }
  float average = total / (float) ab.size();
  
  lerpedAverage = lerp(lerpedAverage, average, 0.1f);
  
  float radius = 50 + (lerpedAverage * 500);
  circle(width / 2, 200, radius);
  
  int zc= countZeroCrossings();
  
  float freq = zc * (44100 / (float) bufferSize);
  fill(255);
  text(freq, 10, 50);
  
  fft.forward(ab);
  
  int maxIndex = 0;
  for (int i= 0 ; i < fft.specSize() / 2; i ++)
  {
    stroke(255);
    line(i * 2, height, i * 2, height - (fft.getBand(i)));
    
    if (fft.getBand(i) > fft.getBand(maxIndex))
    {
      maxIndex = i;
    }
  }
  
  println(maxIndex);
  float freqFFT = fft.indexToFreq(maxIndex);
  text(freqFFT, 10, 200);
  
  float y = map(maxIndex, 10, 24, height, 0);
  lerpedY = lerp(lerpedY, y, 0.1f);
  
  circle(100, y, 30);
  
}

float lerpedY = 0;
