int sum = 0;
   void setup()
  {
      size(300, 400);
      noLoop();
  }
  void draw()
  {
      background(0);
      rollDie();
  }
  void rollDie() 
  {
    sum = 0;
    for(int y = 0; y < 300; y = y + 100) {
       for(int x = 0; x < 300; x = x + 100) {
          Die dicey = new Die(x, y);
          dicey.roll();
          dicey.show();
        }
     }
     fill(255);
     textSize(30);
     text("Sum of Dice = " + sum, 25, 360);
  }
  void mousePressed()
  {
      redraw();
  }
  class Die //models one single dice cube
  {
      //member variable declarations here
      int dx, dy, dice;
      
      Die(int x, int y) //constructor
      {
          //variable initializations here
          dice = 0;
          dx = x;
          dy = y;
      }
      void roll()
      {
          //your code here
          dice = (int)((Math.random())*6+1);
          sum = sum + dice;
          System.out.println(sum);
      }
      void show()
      {
          //your code here
          fill(255);
          rect(dx, dy, 100, 100);
          fill(0);
          if(dice == 1) {
            ellipse(dx + 50, dy + 50, 25, 25);
          } else if(dice == 2) {
            ellipse(dx + 75, dy + 25, 25, 25);
            ellipse(dx + 25, dy + 75, 25, 25);
          } else if(dice == 3) {
            ellipse(dx + 20, dy + 80, 25, 25);
            ellipse(dx + 50, dy + 50, 25, 25);
            ellipse(dx + 80, dy + 20, 25, 25);
          } else if(dice == 4) {
            ellipse(dx + 75, dy + 25, 25, 25);
            ellipse(dx + 25, dy + 75, 25, 25);
            ellipse(dx + 75, dy + 75, 25, 25);
            ellipse(dx + 25, dy + 25, 25, 25);
          } else if(dice == 5) {
            ellipse(dx + 20, dy + 80, 25, 25);
            ellipse(dx + 50, dy + 50, 25, 25);
            ellipse(dx + 80, dy + 20, 25, 25);
            ellipse(dx + 20, dy + 20, 25, 25);
            ellipse(dx + 80, dy + 80, 25, 25);
          } else {
            ellipse(dx + 20, dy + 30, 25, 25);
            ellipse(dx + 50, dy + 30, 25, 25);
            ellipse(dx + 80, dy + 30, 25, 25);
            ellipse(dx + 20, dy + 70, 25, 25);
            ellipse(dx + 50, dy + 70, 25, 25);
            ellipse(dx + 80, dy + 70, 25, 25);
          }
      }
  }
  
//Die dicey, dicey2, dicey3, dicey4;
//   void setup()
//  {
//      size(400, 400);
//      dicey = new Die(0, 0);
//      dicey2 = new Die(100, 0);
//      dicey3 = new Die(200, 0);
//      dicey4 = new Die(300, 0);
//      noLoop();
//  }
//  void draw()
//  {
//      background(0);
//      dicey.roll();
//      dicey.show();
//      dicey2.roll();
//      dicey2.show();
//      dicey3.roll();
//      dicey3.show();
//      dicey4.roll();
//      dicey4.show();
//  } 
  
