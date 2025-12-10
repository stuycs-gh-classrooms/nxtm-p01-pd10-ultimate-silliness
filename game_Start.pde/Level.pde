class Level {
  int levelNum;
  int rows = 5;
  int cols = 8;
  Brick[][] bricks;

  Level(int num) {
    levelNum = num;
    bricks = new Brick[rows][cols];

    int bw = width / cols;
    int bh = 25;

    for (int r = 0; r < rows; r++) {
      for (int c = 0; c < cols; c++) {

        int hp = (levelNum == 1 ? 1 : 2);

        bricks[r][c] = new Brick(
          c * bw,
          50 + r * bh,
          bw - 2,
          bh - 2,
          hp
        );
      }
    }
  }

  void drawBricks() {
    for (int r = 0; r < rows; r++) {
      for (int c = 0; c < cols; c++) {
        bricks[r][c].draw();
      }
    }
  }

  boolean allBricksGone() {
    for (int r = 0; r < rows; r++) {
      for (int c = 0; c < cols; c++) {
        if (bricks[r][c].alive) return false;
      }
    }
    return true;
 
