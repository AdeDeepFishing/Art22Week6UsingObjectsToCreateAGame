class Ball {
  float xpos, ypos, radius, xspeed, yspeed, angle, rectWidth, rectHeight, rectX, rectY;

  Ball(float xpos, float ypos, float radius, float xspeed, float yspeed, float angle, float rectX, float rectY, float rectWidth, float rectHeight) {
    this.xpos=xpos;
    this.ypos=ypos;
    this.xspeed=xspeed;
    this.yspeed=yspeed;
    this.angle=angle;
    this.radius=radius;
    this.rectWidth=rectWidth;
    this.rectHeight=rectHeight;
    this.rectX=rectX;
    this.rectY=rectY;
    xpos=0;
    ypos=0;
    xspeed=2;
    yspeed=2;
  }

  void displayball() {
    fill(255);
    ellipse(xpos, ypos, radius, radius);
  }
  void displayrect() {
    noStroke();
    rect(rectX, rectY, rectWidth, rectHeight);
  }

  void randomize() {
    angle=random(-5, 5);
  }

  void move() {
    xpos += xspeed;
    ypos += yspeed*angle;

    if (xpos > width || xpos < 0) {
      xspeed *= -1;
    }
    if (ypos > height || ypos < 0) {
      yspeed *= -1;
    }
    if (xpos > width) {
      xpos=0;
      ypos=0;
      randomize();
    }
  }
  void hitPaddle(float paddlex, float paddley, float paddlewidth, float paddleheight, float ballx, float bally, float radius) {
    if (ballx > paddlex && ballx < paddlex+paddlewidth && bally > paddley && bally < paddley+paddleheight == true) {
      fill(255, 0, 0);
      rect(rectX, rectY, rectWidth, rectHeight);
      displayball();
    } else {
      fill (255);
      rect(rectX, rectY, rectWidth, rectHeight);
    }
  }
}
