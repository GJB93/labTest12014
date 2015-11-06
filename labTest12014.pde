void setup()
{
  size(500, 500);
}

ArrayList<Expense> expenses = new ArrayList<Expense>();
String filename = "expense.txt";

void draw()
{
  
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
