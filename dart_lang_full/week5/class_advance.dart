void main() {
  final user = _User('bahadir', age: 21);

  // if(user.age is! int )  is not int ??
  if (user.age is int) {
    if (user.age! < 18) {
      print("yes, little ");
      user.updateMoneyWithString('TR');
    } else {
      user.updateMoneyWithNumber(15);
      print(user.moneyType);
    }
  }

  final _newType = user.moneyType is String ? (user.moneyType as String) : "";
  print(_newType + "A");

  //-----------------------------------------------------------------------------
  // Value and Reference Types

  int money1 = 50;
  int money2 = 50;

  final moneyBank1 = Bank(45, '12');
  final moneyBank2 = Bank(65, '12');

  if (money1 == money2)
    print('equal');
  else
    print('not equal');

  if (moneyBank1 == moneyBank2)
    print('equal');
  else
    print('not equal');

  // moneyBank1.money + moneyBank2.money
  print(moneyBank1 + moneyBank2);

  //With the == operator we directly check if the customer is the same person.
  print(moneyBank1 == moneyBank2);

  // CASCADE NOTATION
  final bankUser1 = Bank(1500, '24');
  bankUser1.money = 1600;
  bankUser1.name = 'veli';

  // We can do multiple operations in one line.
  final bankUser2 = Bank(2000, '25');
  bankUser2
    ..money += 200
    ..name = 'bahadir';
}

// private class
class _User {
  final String name;
  int? age;

  dynamic moneyType;
  // dynamic --> string, int...

  _User(this.name, {this.age});

  void updateMoneyWithString(String data) {
    moneyType = data;
  }

  void updateMoneyWithNumber(int number) {
    moneyType = number;
  }
}

class Bank {
  int money;
  final String id;
  String? name;

  Bank(this.money, this.id);

  void updateName(String name) {
    this.name = name;
  }

  // a value will come from the same datatype
  int operator +(Bank newBank) {
    return this.money + newBank.money;
  }

  //a different datatype value may come
  //so we give object parameter
  bool operator ==(Object object) {
    return object is Bank && object.id == id;
  }
}
