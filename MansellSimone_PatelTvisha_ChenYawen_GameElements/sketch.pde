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
