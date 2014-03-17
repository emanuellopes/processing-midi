class gravidade
{
  float y1[]; 
  float y2[];
  float gravity = 0.1;  
  float speed = 0;   // speed of square
  float x[];
  float r1, r2;
  gravidade()
  {
    r1=0;
    y1 =new float[50];
    y2 =new float[50];
    x =new float[50];
    for (int i=0; i<8; i++)
    {
      y1[i] = height/2 -100; 
      y2[i] = height/2 -100;
      x[i]= random(80);
    }
  }
  void linhas_movimento()
  {
    for (int i=0; i<50; i++)
    {
      y1[i] = y1[i] + speed + r1;
      y2[i] = y2[i] +speed + r2;
      // Add gravity to speed.
      speed = speed + gravity;
      // If square reaches the bottom
      // Reverse speed
      r2 = random(15);
      if (y1[i] > height || y2[i]>height) {
        speed = speed * -0.95;
        r1 = random(-5);
        r2 = random(-15);
      }
    }
  }
  void desenhar_linhas()
  {
    for (int i=0; i<50; i++)
    {
      rotateX(pos_x);
      rotateY(pos_y);
      rotateZ(pos_z);
      stroke(color(int(random(359)), 89, 91));
      strokeWeight(4);
      line(x[i], y1[i], x[i] +500, y2[i]);
    }
  }
}

