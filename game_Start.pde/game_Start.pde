Paddle paddle;
Ball ball;
Level level;

boolean isPlaying = false;
int score = 0;
int lives = 3;
int screenSize = 600;

void setup() {
  size(600, 600);   
  screenSize = 600;
  startGame();
}

void draw() {
  background(0);

  // Draw bricks
  level.drawBricks();

  // Draw paddle and ball
  paddle.draw();
  ball.draw();

  // HUD
  fill(255);
  textSize(16);
  text("Score: " + score, 20, 20);
  text("Lives: " + lives, width - 100, 20);

  if (isPlaying) {
    ball.move();
    paddle.move();
    checkCollisions();
  }

  // If ball falls below screen
  if (ball.y > height) {
    lives--;
    resetBallAndPaddle();
  }

  // Game Over
  if (lives <= 0) {
    gameOver();
  }

  // Level Complete
  if (level.allBricksGone()) {
    levelComplete();
  }
}

void startGame() {
  paddle = new Paddle(width/2 - 40, height - 40, 80, 15);
  ball = new Ball(width/2, height/2, 15);
  level = new Level(1);      // Start at level 1
  isPlaying = false;          // Start paused
}

void resetBallAndPaddle() {
  ball.reset(width/2, height/2);
  paddle.x = width/2 - paddle.w/2;
  isPlaying = false;
}

void keyPressed() {
  if (keyCode == LEFT) paddle.direction = -1;
  if (keyCode == RIGHT) paddle.direction = 1;

  if (key == 'p' || key == 'P') isPlaying = !isPlaying;
  if (key == 'r' || key == 'R') startGame();
}

void keyReleased() {
  if (keyCode == LEFT || keyCode == RIGHT) paddle.direction = 0;
}

void mousePressed() {
  // Click to start ball
  if (!isPlaying) {
    isPlaying = true;
  }
}

void checkCollisions() {
  // Ball to Paddle
  if (ball.y + ball.diameter >= paddle.y &&
      ball.x + ball.diameter >= paddle.x &&
      ball.x <= paddle.x + paddle.w) {
    ball.speedY *= -1;
  }

  // Ball to Brick
  for (int r = 0; r < level.rows; r++) {
    for (int c = 0; c < level.cols; c++) {
      Brick b = level.bricks[r][c];
      if (!b.alive) continue;

      if (ball.x + ball.diameter > b.x &&
          ball.x < b.x + b.w &&
          ball.y + ball.diameter > b.y &&
          ball.y < b.y + b.h) {

        b.hit();        // Reduce brick health
        score += 10;
        ball.speedY *= -1;
      }
    }
  }
}

void gameOver() {
  background(0);
  fill(255, 0, 0);
  textAlign(CENTER);
  textSize(32);
  text("GAME OVER", width/2, height/2);
  noLoop();
}

void levelComplete() {
  background(0);
  fill(0, 255, 0);
  textAlign(CENTER);
  textSize(28);
  text("Level Complete!", width/2, height/2);

  delay(1000); // halt function
  newStage();
}

void newStage() {
  level = new Level(level.levelNum + 1);
  resetBallAndPaddle();
}

