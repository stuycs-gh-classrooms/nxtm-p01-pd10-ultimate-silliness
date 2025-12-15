class Ball {
  int x, y;
  int diameter;
  int speedX = 4;
  int speedY = -4;

  Ball(int startX, int startY, int d) {
    x = startX;
    y = startY;
    diameter = d;
  }

  void move() {
    x += speedX;
    y += speedY;

    if (x <= 0 || x >= width - diameter) speedX *= -1;
    if (y <= 0) speedY *= -1;
  }

  void draw() {
    fill(255, 200, 0);
    ellipse(x, y, diameter, diameter);
  }

  void reset(int startX, int startY) {
    x = startX;
    y = startY;
    speedX = 4;
    speedY = -4;
  }
}
