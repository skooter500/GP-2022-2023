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
  ai = m.getLineIn(Minim.MONO, bufferSize, 44100, 16);
  
}

int bufferSize = 512;

Minim m;
AudioInput ai;
AudioPlayer ap;
AudioBuffer ab;

void draw()
{
}
