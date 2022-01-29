// all classes derive from object class
// class UserModel extends Object (Default)

class UserModel {
  late final String name;
  late int money;
  late final int? age;
  late final String? city;

  late final String userCode;
  late final String _id;

  UserModel(this.name, this.money,
      {required String id, int? age, String? city}) {
    _id = id;
    userCode = (city ?? 'ist') + name;
  }

  bool isSpecialUser(String id) {
    return _id == id;
  }

}


// 3:50:00