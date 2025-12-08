[![Review Assignment Due Date](https://classroom.github.com/assets/deadline-readme-button-22041afd0340ce965d47ae6ef1cefeee28c7c493a6346c4f15d667ab976d596c.svg)](https://classroom.github.com/a/QTULg0OX)
# NeXtCS Project 01
### thinker0: jim zr
### thinker1: nbih islm
---

### Overview
Your mission is create either:
- Life-like cellular automata [life](https://en.wikipedia.org/wiki/Conway%27s_Game_of_Life), [life-like](https://en.wikipedia.org/wiki/Life-like_cellular_automaton), [demo](https://www.netlogoweb.org/launch#https://www.netlogoweb.org/assets/modelslib/Sample%20Models/Computer%20Science/Cellular%20Automata/Life.nlogo).
- Breakout/Arkanoid [demo 0](https://elgoog.im/breakout/)  [demo 1](https://www.crazygames.com/game/atari-breakout)
- Space Invaders/Galaga

This project will be completed in phases.  
The first phase will be to work on this document. 
* Use markdown formatting.
* For more markdown help
  - [click here](https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet) or
  - [here](https://docs.github.com/en/get-started/writing-on-github/getting-started-with-writing-and-formatting-on-github/basic-writing-and-formatting-syntax)


---

## Phase 0: Selection, Analysis & Plan

#### Selected Project: Breakout 

### Necessary Features
What are the core features that your program should have? These should be things that __must__ be implemented in order to make the program useable/playable, not extra features that could be added to make the program more interesting/fun.

We need to have a paddle, which hits a ball that bounces off walls and hits other bricks. We must have a grid of bricks that break when hit. The ball must have a number of "lives," and it would lose a life each time it goes past the paddle. There must be a way to pause, continue, or reset the gameplay. There must be additional stages once the first stage is cleared. 

### Extra Features
What are some features that are not essential to the program, but you would like to see (provided you have time after completing the necessary features. Theses can be customizations that are not part of the core requirements.

 We could also have the grid of bricks move down as time passes, and if it reaches a certain distance from the paddle (is very close), the game will reset. 

### Array Usage
How will you be using arrays in this project?

1D Array:
- N/A

2D Array:
- Brick[][] bricks (to manage the bricks as a whole) 


### Controls
How will your program be controlled? List all keyboard commands and mouse interactions.

Keyboard Commands:
- The left and right arrow keys would be responsible for moving the paddle. The P key would be used to pause/play. The R key would be used to reset the gameplay.

Mouse Control:
- Mouse movement: N/A
- Mouse pressed: If the stage is cleared and there's a certain-colored rectangle in the center, if the mouse is pressed there, the second stage will load.


### Classes
What classes will you be creating for this project? Include the instance variables and methods that you believe you will need. You will be required to create at least 2 different classes. If you are going to use classes similar to those we've made for previous assignments, you will have to add new features to them.


Class Name: GameStart 
- Instance variables:
  - Paddle paddle
  - Ball ball
  - boolean isPlaying
  - int score
  - int lives
  - int screenSize
- METHODS
  - void startGame()
  - void checkCollisions()
  - void gameOver()
  - void levelComplete()
  - void keyPressed()

Class Name: Paddle
- Instance variables:
  - int x
  - int y
  - int width
  - int height
  - int speed
  - int direction
- METHODS
  - Paddle(int startX, int startY, int w, int h)
  - void move()
  - void directionMove(int num)
  - void draw


  Class Name: Ball
  - Instance variables:
    - int x
    - int y
    - int diameter
    - int speedX
    - int speedY
  - Methods:
    - Ball(int startX, int startY, int size)
    - void move()
    - void direction()
    - void draw()
    
