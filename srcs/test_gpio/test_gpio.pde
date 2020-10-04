import processing.io.*;

int beg, end;
float rev;

Player p1 = new Player(100, 100, 30, 100, 7);
//Ball b = new Ball(200, 200, 1, 0.3, 3, 50);

void setup()
{
  //size(200, 150);
  fullScreen();
  frameRate(60);
  background(0);
  GPIO.pinMode(4, GPIO.INPUT_PULLUP);
  GPIO.pinMode(7, GPIO.INPUT_PULLUP);
  
  end = 0;
}

void draw()
{
  background(0);
  
  //text((millis() - end), 20, 20);
  
  if (GPIO.digitalRead(4) == GPIO.HIGH)
    p1.move_up();
  else if (GPIO.digitalRead(7) == GPIO.HIGH)
    p1.move_down();

  p1.display();
  //b.display();
  end = millis();
}
