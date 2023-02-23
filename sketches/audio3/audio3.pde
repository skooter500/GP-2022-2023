import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

void setup()
{
  size(512, 500, P3D);
  
  cube1 = new Cube(); 
  cube = new Cube(100, 0.1f, color(100, 255, 255), width / 2 + 100 , height / 2 + 100);
  
  ai = minim.getLineIn(Minim.MONO, 512, 44100, 16);
  ap = minim.loadFile(
  ab = ai.mix;
  
  
  
}

float theta;
Cube cube;
Cube cube1;
Minim minim;
AudioPlayer ap;
AudioInput ai;
AudioBuffer ab;

void draw()
{
  background(0);
  noStroke();
  strokeWeight(2);
  lights();
  theta += map(mouseX, 0, width, 0, 0.1f);
  
  cube.update();
  cube.render();
  
  cube1.update();
  cube1.render();
  
  
}
