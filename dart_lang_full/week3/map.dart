
void main() {
  Map<String, int> users = {'white': 20, 'halis': 30, 'bob': 40};

  print('white has ${users['white']} dollars');

  for (var item in users.keys) {
    print(item);
  }

  for (var item in users.values) {
    print(item);
  }

  for (var item in users.keys) {
    print('${item} - ${users[item]}');
  }

  for (var i = 0; i < users.length; i++) {
    print('${users.keys.elementAt(i)} - ${users.values.elementAt(i)}');
  }

  print('\n******************************');
  // ---------- SENARIO ----------

  Map<String, List<int>> bank = {
    'halis': [100, 300, 200],
    'white': [250, 300],
    'bob': [100]
  };

  bank['carol'] = [140, 120];
  bank['adam'] = [240, 420];

  for (var name in bank.keys) {
    print(name);

    for (var value in bank[name]!) {
      if (value > 150) {
        print('greater than 150 dollars');
        break;
      }
    }
  }

  print('\n******************************');

  // total budget

  for (var name in bank.keys) {
    int sum = 0;
    for (var value in bank[name]!) {
      sum += value;
    }

    print('$name total budget --> $sum');
  }

  var sum = 0;
  for (var item in bank.keys) {
    for (var value in bank[item]!) {
      sum += value;
    }
  }
  print('total budget: ${sum}');
}
