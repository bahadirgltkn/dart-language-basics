import 'model/user_model.dart';
import 'model/user_model_2.dart';
import 'model/user_model_3.dart';

void main() {
  User user1 = User('bahadir', 200, 24, 'istanbul');
  print(user1.name);

  print('*' * 40);
  User user2 = User('halis', 400, null, null);
  print('${user2.name} has ${user2.money} dollars');

  print('*' * 40);
  print('best practice');

  User2 user4 = User2('bahadir', 4000, age: 24, city: 'istanbul');
  User2 user5 = User2('halis', 6000, age: 22);

  print('${user4.name} --- ${user4.userCode}');

  print('*' * 60);

  UserModel user101 = UserModel('bahadir', 4000, id: '12');

  print('*' * 60);
  User3 newUser = User3('bahadir', 4000);
  print('newUser money: ${newUser.money}');
  newUser.money += 100;
  // int money
  // we can change the money value
  print('updated newUser money: ${newUser.money}');
  print('*' * 60);

  
  print('*' * 60);
  print('newUser money: ${newUser.money}');
  // setter money
  newUser.money = 20000;
  print('newUser money: ${newUser.money = 20000}');
  print('*' * 60);

  
}

class User {
  // properties

  late final String name;
  late final int money;
  late final int? age;
  late final String? city;

  User(String name, int money, int? age, String? city) {
    this.name = name;
    this.money = money;
    this.age = age;
    this.city = city;
  }
}
