void main() {
  final customerMouse = Mouses.a4;
  print(customerMouse);
  print(customerMouse.name);

  if (customerMouse.isCheckName('a4')) {
    print('heree');
  }
}

// we use it to hold data of similar structure
enum Mouses { magic, apple, logitech, a4 }


// Thanks to extensions, it is possible to give enums or 
// classes a dynamic structure.
extension MousesSelectedExtension on Mouses {
  bool isCheckName(String name) {
    return this.name == name;
  }
}

// 4:21:29