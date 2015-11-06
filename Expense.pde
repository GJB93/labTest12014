class Expense{
  String name;
  String party;
  String constituency;
  float returned;
  float claimed;
  float total;
  color c;
  
  Expense(String line)
  {
    String[] elements = line.split("\t");
    name = elements[0];
    party = elements[1];
    constituency = elements[2];
    returned = Float.parseFloat(elements[3]);
    claimed = Float.parseFloat(elements[4]);
    total = claimed - returned;
    c = color(random(255), random(255), random(255));
  }
  
  Expense()
  {
    name = "";
    party = "";
    constituency = "";
    returned = 0.0f;
    claimed = 0.0f;
    total = 0.0f;
    c = color(0);
  }
  
}
