class bolas_rasto
{
  int rx, ry;
  bolas_rasto() 
  {
    rx = int(random(width));
    ry =int(random(height));
    noStroke();
  }
  void desenhar() {
    for (int i=0; i<10; i++) {
      rx = rx +=1;
      ry = ry +=1;
      rotateX(pos_x);
      rotateY(pos_y);
      rotateZ(pos_z);
      color(int(random(359)), 89, 91);
      ellipse(rx, ry, 10, 10);
    }
  }
}

