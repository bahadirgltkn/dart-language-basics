class User3 {
  final String name;
  int _money;
  final int? age;
  final String? city;

  late final String userCode;

  User3(this.name, this._money, {this.age, this.city}) {
    userCode = (city ?? 'ist') + name;
    // (city ?? 'ist')
    // if city value is entered userCode = city + name
    // if city value is not entered  userCode = 'ist' + name;
  }

  int get money => _money;

  set money(int? money) {
    _money = money == null ? 0 : money;

    // performs the same operation

    // if (money == null) {
    //   _money = 0;
    // } else {
    //   _money = money;
    // }
  }
}
