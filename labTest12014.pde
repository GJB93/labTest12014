void setup()
{
  size(500, 500);
  loadExpenses();
  drawExpenses();
}

ArrayList<Expense> expenses = new ArrayList<Expense>();
String filename = "expenses.txt";

void draw()
{
  
}

void drawExpenses()
{
  float barWidth = width/ (float) expenses.size();
  
  for(int i=0; i<expenses.size(); i++)
  {
    Expense expense = expenses.get(i);
    stroke(expense.c);
    fill(expense.c);
    rect(barWidth*i, height, barWidth, map(expense.total, 0, 50000, 0, -height));
  }
}

void loadExpenses()
{
  String[] lines = loadStrings(filename);
  
  for(String line: lines)
  {
    Expense expense = new Expense(line);
    expenses.add(expense);
    
  }
  
}
