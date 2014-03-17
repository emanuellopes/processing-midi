class bolas_aleatorias
{

  bolas_aleatorias()
  {
    background(0);
    noStroke();
    smooth();
    colorMode(HSB);
    for (int i=0; i<30; i++)
    {
      fill(color(int(random(359)), 89, 91));
      ellipse(random(width), random(height), random(10, 40), random(10, 40));
    }
  }
}

