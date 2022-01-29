void main() {
  int money = 5;
  money += 1;
  money++;
  print(money);

  String name = "bahadir";
  String surname = "gültekin";

  print(name + surname);
  print('$name $surname');

  if (name == 'bahadir') {
    print(true);
  }
  if (name != 'bahadir') {
    print(true);
  }
  if (name.length > 5) {
    print(true);
  }
  if (name.length >= 5) {
    print(true);
  }

  const int applePrice = 20;
  const double discount = 2.5;
  int myBudget = 30;

  myBudget = myBudget - (applePrice ~/ discount);
  print(myBudget);

  // 22 % 2 = 0
  print(myBudget % 2 == 0);
  print(myBudget.isEven);
  print(myBudget.isOdd);

}
