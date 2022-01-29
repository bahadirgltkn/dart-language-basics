void main() {
  List<int> salaries = [6250, 6000, 8750, 7300, 5900, 9450];

  print('list: $salaries');
  salaries.sort();
  print('sorted list: $salaries');

  //adds to the end of the list
  salaries.add(6300);
  print('added list: $salaries');

  //adds an item to the entered index value
  salaries.insert(1, 4800);
  print('inserted list: $salaries');

  // reverses the list
  salaries.sort();
  List<int> reversedList = salaries.reversed.toList();
  print('reversed list: $reversedList');

  // for loop
  print('\n******************************');
  List<int> examNotes = [45, 60, 85, 96, 72];
  for (var i = 0; i < examNotes.length; i++) {
    print('exam ${i + 1}: ${examNotes[i]}');
  }

  print('\n******************************');
  for (var i = examNotes.length - 1; i >= 0; i--) {
    print('exam ${i + 1}: ${examNotes[i]}');
  }
  print('\n******************************');

  // -------- LIST METHODS --------
  
  List<String> userNames = ['white', 'halis', 'ahmet', 'enes'];
  var result = userNames.contains('halis');
  print(result);

  print('\n******************************');

  for (var item in userNames) {
    if (item == 'halis')
      print(true);
    else
      print(false);
  }

  print('\n******************************');

}
