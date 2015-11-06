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
    String[] elements = line.split("\t");
    Expense expense = new Expense();
    expense.name = elements[0];
    expense.party = elements[1];
    expense.constituency = elements[2];
    expense.returned = Float.parseFloat(elements[3]);
    expense.claimed = Float.parseFloat(elements[4]);
    expense.total = expense.claimed - expense.returned;
    expenses.add(expense);
  }
  
}
