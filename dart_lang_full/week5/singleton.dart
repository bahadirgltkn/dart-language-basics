import 'model/product_config_model.dart';

void main(List<String> args) {
  final newProduct1 = Product.money;
  print('first value: ${Product.money}');
  calculateMoney();

  // produce a product class object using the user class
  final user1 = User('bahadir', 'glass');

  final newProduct2 = Product(user1.product);
  final newProduct3 = Product.fromUser(user1);

  // Singleton Class
  ProductConfig.instance.apiKey;
  print(ProductConfig.instance.apiKey);
}

void calculateMoney() {
  if (Product.money > 5) {
    print('5 dollars added');
    Product.incrementMoney(10);
  }

  print('final value: ${Product.money}');
}

class Product {
  // static keyword
  // instance is created once and continues for the duration of the program
  static int money = 10;
  String name;

  Product(this.name);

  Product.bahadir([this.name = 'bahadir']);

  // If we want constructors to return values,
  // we need to prepend the factory keyword.
  factory Product.fromUser(User user) {
    return Product(user.name);
  }

  static void incrementMoney(int newMoney) {
    money += newMoney;
  }
}

class User {
  final String name;
  final String product;

  User(this.name, this.product);
}
