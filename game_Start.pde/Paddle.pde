class Paddle {
  int x, y;
  int w, h;
  int direction = 0;
  int speed = 6;

  Paddle(int startX, int startY, int pw, int ph) {
    x = startX;
    y = startY;
    w = pw;
    h = ph;
  }

  void move() {
    x += direction * speed;
    x = constrain(x, 0, width - w);
  }

  void draw() {
    fill(255);
    rect(x, y, w, h);
  }
}

