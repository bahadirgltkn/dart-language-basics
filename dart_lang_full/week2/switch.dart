void main() {
  // Switch Case
  // used to check constant values


  /*  SENARIO

      one ---> 1
      two ---> 2
      three --> 3
      ....
  */
  final String letter = "seven";

  switch (letter) {
    case 'one':
      print(1);
      break;
    case 'two':
      print(2);
      break;
    case 'three':
      print(3);
      break;
    case 'four':
      print(4);
      break;
    case 'five':
    case 'six':
    case 'seven':
      print(5);
      break;

    default:
      print("invalid value");
  }

}
