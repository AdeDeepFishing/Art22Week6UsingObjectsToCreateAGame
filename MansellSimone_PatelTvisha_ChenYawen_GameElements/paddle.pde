 /* Course: ART 22  - Computer Programming for the Arts
 * Assignment: Assignment Name
 *
 * by Tvisha Patel, Simone Mansell, Yanwen Chen
 * 
 * Initiated: 5/4/22
 * Last updated: 5/5/22
 * 
 * CITATIONS: N/A
 *
 * NOTE: Make: Getting Started with Processing pg. 64. Simone and Tvisha did the collision and ball challenges. Yanwen did the paddle class.
 * 
 * */
 
 class Paddle{
  int paddleTall=100;
  int paddleWide=20;
  float yPos;

  int xPos=20;

  Paddle(int paddleTall, int paddleWide, float yPos, int xPos) {
    this.paddleTall=paddleTall;
    this.paddleWide=paddleWide;
    this.yPos=yPos;
    this.xPos=xPos;
  }

  void update(float newYPos) {
    yPos=newYPos;
    yPos=constrain(yPos, 50, height-50);
  }

  void display() {
    fill(255);
    rectMode(CENTER);
    rect(xPos, yPos, paddleWide, paddleTall);
  }
}
Paddle myPaddle;


void setup() {
  size(800, 800);
  myPaddle=new Paddle(100,20,mouseY,20);

}

void draw() {
  background(0);
  myPaddle.update(mouseY);
  myPaddle.display();

 
}
