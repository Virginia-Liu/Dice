Die[] dice = new Die[30];
void setup()
{
  noLoop();
  size(420,420);
  int count = 0;
  for (int outer = 1; outer <5; outer++)
  {
    for(int inner = 1; inner <7; inner++){
   dice[count] = new Die(outer *60 -50, inner * 60 - 50); 
   count++;
    }
  }
}
void draw()
{
  background(0);
  int total = 0;
    for (int i = 0; i < dice.length; i++)
  {
    dice[i].roll();
    dice[i].show();
    total = total + dice[i].roll;
  }
  System.out.println("Total: " + total);
  
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
    fill(255,255,255);
    rect(myX,myY,40,40);
    fill(0,0,0);
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
