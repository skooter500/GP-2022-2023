void setup()
{
  size(500, 500);
  
  for(float f:rainfall)
  {
    println(f);
  }
  
  for(int i = 0 ; i < rainfall.length ; i ++)
  {
    println(rainfall[i]);
  }
  for(int i = 0 ; i < rainfall.length; i ++)
  {
    println(months[i] + "\t" + rainfall[i]);
  }
  
  for(int i = rainfall.length - 1 ; i >= 0 ; i --)
  {
    println(months[i] + "\t" + rainfall[i]);
  }
  
  
  // Total
  float total = 0;
  for(int i = 0 ; i < rainfall.length ; i ++)
  {
    total += rainfall[i];
  }
  
  float average = total / (float) rainfall.length;  
  
  println("Total: " + total);
  println("Average: " + average);
   
  // Min
  
  int minIndex = 0;
  int maxIndex = 0;
  for(int i = 0 ; i < rainfall.length ; i ++) //<>//
  {
    if (rainfall[i]< rainfall[minIndex])
    {
      minIndex = i;
    }
    
   if (rainfall[i]> rainfall[maxIndex])
    {
      maxIndex = i;
    }
 }
 
 println("Month: " + months[minIndex] + " had the lowest rainfall of: " + rainfall[minIndex]);
 println("Month: " + months[maxIndex] + " had the highest rainfall of: " + rainfall[maxIndex]);
  
  // Max
  
  // Average
  
  //Bubble Sort!
  //Keep swapping out of order elements until there are no more swaps
  // Example:
  10 2 9 18
  Iteration 1
  
  //To swap elements
  float temp = rainfall[i];
  rainfall[i] = rainfall[i + 1];
  rainfall[i + 1] = temp;
  
  do
  {
  }
  while(something);
  
  while(something)
  {
  }
  
  for(int i = 0 ; i < 10 ; i ++)
  {
  }
  
  
  // Selection Sort!
  // Put the highest element at the end, then put the next highest as the 
  // second end and keep going until there are no more
  
  
  
  
  
}

float[] rainfall = {100, 200, 350, 200, 50, 10, 5,10, 25, 100, 220, 400};
String[] months = {"Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sept", "Oct", "Nov", "Dec"};

int[] ia = new int[100];

void draw()
{
  float w = width / (float) rainfall.length;
  for(int i = 0 ; i < rainfall.length ; i ++)
  {
    float x = map(i, 0, rainfall.length, 0, width);
    
  }
}
