void main(List<String> args) {
  final car = CarModel(model: CarModels.mercedes, name: 'benz', price: 25000, isSecondHand: false);

  final carItems = [
    CarModel(model: CarModels.ferrari, name: 'benz', price: 25000, isSecondHand: false),
    CarModel(model: CarModels.bmw, name: 'x6', price: 30000),
    CarModel(model: CarModels.toyota, name: 'corolla', price: 15000, isSecondHand: false),
    CarModel(model: CarModels.audi, name: 'a6', price: 27000),
    CarModel(model: CarModels.ferrari, name: 'cxyz', price: 60000, isSecondHand: false)
  ];

  // How many of the vehicles on the list are second hand?
  final resultCount = carItems.where((element) => element.isSecondHand == true).length;
  print('second hand car count: $resultCount');

  // do you have the same car
  final newCar = CarModel(model: CarModels.bmw, name: 'x6', price: 30000);

  final isHave = carItems.any((element) => element.name == newCar.name);
  print(isHave);

  // map() creates a new object
  final carNames = carItems.map((e) => e.name).join(', ');
  print(carNames);

  // Do you have a mercedes car?
  try {
    final isHaveMercedes = carItems.singleWhere((element) => element.model == CarModels.mercedes);
    print(isHaveMercedes.name);
  } catch (e) {
    print('none');
  } finally {
    print('this block must work');
  }

  // Is the newCar object in the list ?
  final index = carItems.indexOf(newCar);
  print(index);
  

}

class CarModel {
  final CarModels model;
  final String name;
  final double price;
  String? city;
  bool isSecondHand;

  CarModel({
    required this.model,
    required this.name,
    required this.price,
    this.city,
    this.isSecondHand = true,
  });
}

enum CarModels { bmw, mercedes, audi, toyota, ferrari}
