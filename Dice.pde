void setup()
{
  size(600, 600);
  noLoop();
}
void draw()
{
  //code
  background(0);
  //a = 50;
  //b = 50;
  for(int j = 0; j < 600; j += 100){
    for(int i = 0; i < 600; i += 100){
      Die c = new Die(i, j);
      //c.roll();
      c.show();
      //a += 100;
    }
    //b += 100;
  }
}
void mousePressed()
{
  redraw();
}
class Die //models one single dice cube
{
  //variable declarations
  int myX, myY, roll;
	
  Die(int x, int y) //constructor
  {
    //variable initializations here
    myX = x;
    myY = y;
    roll = (int)(Math.random()*6) + 1;
    //myX1 = x + 50;
    //myY1 = y - 50;
  }
  /*void roll()
  {
    int num = (int)(Math.random()*6) + 1;
  }*/
  void show()
  {
    fill(255);
    rect(myX,myY,100,100);
    fill(0);
    if(roll == 1){
      ellipse(myX + 50, myY + 50, 20, 20);
    }else if(roll == 2){
      ellipse(myX + 25, myY + 50, 20, 20);
      ellipse(myX + 75, myY + 50, 20, 20);
    }else if(roll == 3){
      ellipse(myX + 25, myY + 25, 20, 20);
      ellipse(myX + 50, myY + 50, 20, 20);
      ellipse(myX + 75, myY + 75, 20, 20);
    }else if(roll == 4){
      ellipse(myX + 25, myY + 25, 20, 20);
      ellipse(myX + 75, myY + 25, 20, 20);
      ellipse(myX + 25, myY + 75, 20, 20);
      ellipse(myX + 75, myY + 75, 20, 20);
    }else if(roll == 5){
      ellipse(myX + 25, myY + 25, 20, 20);
      ellipse(myX + 75, myY + 25, 20, 20);
      ellipse(myX + 25, myY + 75, 20, 20);
      ellipse(myX + 75, myY + 75, 20, 20);
      ellipse(myX + 50, myY + 50, 20, 20);
    }else if(roll == 6){
      ellipse(myX + 25, myY + 25, 20, 20);
      ellipse(myX + 75, myY + 25, 20, 20);
      ellipse(myX + 25, myY + 50, 20, 20);
      ellipse(myX + 75, myY + 50, 20, 20);
      ellipse(myX + 25, myY + 75, 20, 20);
      ellipse(myX + 75, myY + 75, 20, 20);
    }
  }
}
