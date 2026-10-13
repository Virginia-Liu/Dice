Die[] dice = new Die[25];
void setup()
{
  size(300, 350);
  int count = 0;
  for (int outer = 1; outer < 6; outer++){
    for (int inner = 1; inner < 6; inner++){
      dice[count] = new Die(outer * 60 - 50, inner * 60 - 50);
      count++;}
  }
  noLoop();
}
void draw()
{
  background(255, 182, 193);
  int total = 0;
    for (int i = 0; i < dice.length; i++)
  {
    dice[i].roll();
    dice[i].show();
    total = total + dice[i].roll;
  }
  fill(255);
  textSize(20);
  text("Total:" + total,120,325);
  
}
void mousePressed()
{
  redraw();
}
class Die //models one single dice cube
{
  int myX, myY, roll;
  
  Die(int x, int y) //constructor
  {
    myX = x; 
    myY = y;
    roll();

  }
  void roll()
  {
    roll = (int)(Math.random()*6)+1;
  }
  void show()
  {
    fill((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
    rect(myX,myY,40,40);
    fill(255,255,255);
    if (roll == 1){
      ellipse(myX + 20, myY + 20,5,5);}
    if (roll ==2){
      ellipse(myX+30,myY+10,5,5);
      ellipse(myX+10,myY+30,5,5);
    }
    if (roll==3){
    ellipse(myX+30,myY+11,5,5);
    ellipse(myX+20,myY+20,5,5);
    ellipse(myX+10,myY+33,5,5);
    }
    if (roll==4){
    ellipse(myX+10,myY+10,5,5);
    ellipse(myX+10,myY+30,5,5);
    ellipse(myX+30,myY+10,5,5);
    ellipse(myX+30,myY+30,5,5);
    }
    if (roll==5){
    ellipse(myX+10,myY+10,5,5);
    ellipse(myX+10,myY+30,5,5);
    ellipse(myX+20,myY+20,5,5);
    ellipse(myX+30,myY+10,5,5);
    ellipse(myX+30,myY+30,5,5);
    }
    if (roll ==6){
    ellipse(myX+12,myY+10,5,5);
    ellipse(myX+12,myY+22,5,5);
    ellipse(myX+12,myY+34,5,5);
    ellipse(myX+32,myY+10,5,5);
    ellipse(myX+32,myY+22,5,5);
    ellipse(myX+32,myY+34,5,5);
    }
  } 
}
