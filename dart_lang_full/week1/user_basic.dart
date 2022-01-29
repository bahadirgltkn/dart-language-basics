void main() {
  int userMoney = 30;
  String userName = "Bahadır";
  userMoney += 5;

  print("Hi $userName, your current budget: $userMoney");

  userMoney ~/= 2;
  /* 
    ~ rounds to the low digit
    userMoney /= 2 will give an error
  */

  double price = 42.20;
  price /= 2;
  print("Price: $price");
}
