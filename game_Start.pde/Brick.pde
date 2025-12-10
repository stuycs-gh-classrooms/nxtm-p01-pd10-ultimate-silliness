class Brick {
  int x, y;
  int w, h;
  int health;
  boolean alive = true;

  Brick(int bx, int by, int bw, int bh, int hp) {
    x = bx;
    y = by;
    w = bw;
    h = bh;
    health = hp;
  }

  void draw() {
    if (!alive) return;

    if (health == 2) fill(0, 200, 255);
    else if (health == 1) fill(0, 255, 100);

    rect(x, y, w, h);
  }

  void hit() {
    health--;
    if (health <= 0) alive = false;
  }
}

