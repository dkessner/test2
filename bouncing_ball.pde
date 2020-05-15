//
// bouncing_ball.pde
//


PVector position;
PVector velocity;
int radius = 25;
int c = color(0, 255, 0);


void setup()
{
    size(400, 400);
    position = new PVector(width/2, height/2);
    velocity = new PVector(2, 3);
}


void draw()
{
    background(0);
    fill(c);
    ellipse(position.x, position.y, radius*2, radius*2);

    position.add(velocity);

    if (position.x<radius || position.x>width-radius)
      velocity.x *= -1;
    if (position.y<radius || position.y>height-radius)
      velocity.y *= -1;
}


