class Player
{
  float px;
  float py;
  float speed;
  int size_x;
  int size_y;
  color c;
  
  Player(float _px, float _py, int _size_x, int _size_y, float _speed)
  {
    c = #ffffff;
    this.px = _px;
    this.py = _py;
    this.size_x = _size_x;
    this.size_y = _size_y;
    this.speed = _speed;
}
  
  void display()
  {
    fill(this.c);
    rect(this.px - this.size_x * 0.5, this.py - this.size_y * 0.5, this.size_x, this.size_y);
  }
  
  void move_up()
  {
    this.py -= this.speed;
    this.c = #aaaaff;
  }
  
  void move_down()
  {
    this.py += this.speed;
    this.c = #ffaaaa;
  }
};

class Ball
{
  float px;
  float py;
  float dx;
  float dy;
  float speed;
  int size;
  
  Ball(float _px, float _py, float _dx, float _dy, float _speed, int _size)
  {
    this.px = _px;
    this.py = _py;
    this.dx = _dx;
    this.dy = _dy;
    this.speed = _speed;
    this.size = _size;
  }
  
  void display()
  {
    fill(255);
    ellipse(this.px - this.size * 0.5, this.py - this.size * 0.5, this.size, this.size);
  }
};
