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
