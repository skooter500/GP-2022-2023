void setup()
{
  size(500, 500);
  
  board[1][2] = true;
  board[1][3] = true;
  board[3][2] = true; 
}

// If cell has < 2 > 3 neighbours, dies
// Survival - 2-3 survives
// If cell is dead has 3 neighboiurs comes to life

boolean isAlive(int row, int col)
{
  if (row >= 0 && row < size && col >=0 && col < size)
  {
    return board[row][col];
  }
  else
  {
    return false;
  }
}

int countCellsAround(int row, int col)
{
  int count = 0;
  for(int c = -1 ; c <= 1 ; c ++)
  {
    for(int r = -1 ; r <= 1 ; r ++)
    {
      if ( !(c == 0 && r == 0) && (isAlive(row +r, col + c)))
      {
        count ++;
      }
    }
  }
  //
  return count;
}


void clearBoard()
{
  for(int col = 0 ; col < size ; col ++)
  {
    for(int row = 0 ; row < size ; row ++)
    {
      board[row][col] = false;
    }
  }
}

void toggleCell(int row, int col)
{
  if (row >= 0 && row < size && col >=0 && col < size)
  {
    board[row][col] = ! board[row][col];
  }
}

void mousePressed()
{
  int col = (int) map(mouseX, 0, width, 0, size);
  int row = (int) map(mouseY, 0, height, 0, size);
  toggleCell(row, col);
}
void mouseDragged()
{
  int col = (int) map(mouseX, 0, width, 0, size);
  int row = (int) map(mouseY, 0, height, 0, size);
  toggleCell(row, col);
  
}

void drawBoard()
{
  float cellSize = width / (float) size;
  for(int col = 0 ; col < size ; col ++)  
  {
    for(int row = 0 ; row < size ; row ++)
    {
      //float x = map(col, 0, size, 0, width);
      //float y = map(row, 0, size, 0, height);
      
      float x = col * cellSize;
      float y = row * cellSize;
      
      
      if (board[row][col])
      {
        fill(0, 255, 0);
      }
      else
      {
        noFill();
      }
      
      rect(x, y, cellSize, cellSize);
    }
  }
}

void randomize()
{
  for(int col = 0 ; col < size ; col ++)
  {
    for(int row = 0 ; row < size ; row ++)
    {
      board[row][col] = (random(0.0f, 1.0f) > 0.5f);
    }
  }
}

int size = 10;
boolean [][] board = new boolean[size][size];
boolean [][] next = new boolean[size][size];

void updateBoard()
{
  for(int col = 0 ; col < size ; col ++)
  {
    for(int row = 0 ; row < size ; row ++)
    {
      //Apply the three rules
      // If cell has < 2 > 3 neighbours, dies
      // Survival - 2-3 survives
      // If cell is dead has 3 neighboiurs comes to life

      
    }
  }
  
  boolean [][] temp;
  temp = board;
  board = next;
  next = temp;
}

void draw()
{
  background(0);
  
  int c = countCellsAround(2, 3);
  println(c);
  //randomize();
  drawBoard();
}
