
class User2 {
  late final String name;
  late int money;
  late final int? age;
  late final String? city;

  late final String userCode;

  User2(String name, int money, {int? age, String? city}) {
    this.name = name;
    this.money = money;
    this.age = age;
    this.city = city;

    userCode = (city ?? 'ist') + name;
  }
}