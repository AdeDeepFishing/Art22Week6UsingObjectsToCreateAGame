/*
 * Course: ART 22  - Computer Programming for the Arts
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
 
Ball ball;

void setup() {
  size(500, 500);
  smooth();
  ball = new Ball(0, 0, 20, 2, 2, random(-5, 5), 150, 150, 200, 200);
}

void draw() {
  background(0);
  ball.displayball();
  ball.displayrect();
  ball.move();
  ball.hitPaddle(150, 150, 200, 200, ball.xpos, ball.ypos, 20);
}
