- We had many suggestions on adding a 1D Array, which makes sense -->

 1D Array: int[] brickLives (each brick's durability / number of hits remaining


- Mouse click (anywhere on screen): Launch the ball when the game is paused, assuming the ball sits on top of the paddle until the player clicks.


- We added a brick class, so in GameStart we need to add these elements:

Brick[][] bricks (we need a Brick class)

  - int[] brickLives (stores each brick's life using a 1D array)

  - int currentLevel (tracks the user's progress throughout the stages)

  - Level[] levels (storing multiple stage layouts)


- For the methods in GameStart, we added:

  - void loadLevel(int levelNum) (loads a specific stage)

  - void mousePressed() (handles all new mouse controls)

  - void resetBallAndPaddle() (prepares for a new life, while staying paused)


- For the Ball class:

  - New instance variable: boolean isLaunched (ball shouldn't move until clicked or launched)

  - New Method: - void launch() (called when mouse click triggers the ball to start)


We added Brick and Level as classes as well:

Class Name: Brick (we need a Brick class)

    - Instance Variables:

    - int x

    - int y

    - int width

    - int height

    - int index (connects each brick to the brickLives array)

    - Methods:

    - Brick(int s, int y, int w, int h, int index)

    - void draw()

    - boolean isHit(int ballX, int ballY, int ballD)


    Class Name: Level (added to manage different stage layouts)

    - Instance variables:

    - int[][] layout (stores rows/columns of brick positions or durability)

    - Methods:

    - Level(int[][]layout)
