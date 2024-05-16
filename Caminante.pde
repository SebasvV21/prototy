class Caminante {
  float x, y;
  float vx, vy;
  color c;
  float G;
  Caminante(float x_, float y_, float vx_, float vy_,color c_,float G_) {
    x = x_;
    y = y_;
    vx = vx_;
    vy = vy_;
    c = c_;
    G = G_;
  }

  void dibujar() {
    x += vx;
    y += vy;
    noStroke();
    fill(c, 50);
    ellipse(x, y, 10, G);
  }
}
