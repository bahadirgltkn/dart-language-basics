void main() {
  final int userMoney = 100;
  final int userMoney2 = 0;

  controlUserMoney(userMoney, 80);
  controlUserMoney(userMoney2, 10);

  double userMoney3 = 100;
  print('$userMoney3 TL is ${convertToDollar(userMoney3)}');

  int userMoney4 = 350;
  print('$userMoney4 TL is ${currentDollar(userMoney4, currentDollar: 14)}');

  int userMoney5 = 652;
  print('$userMoney5 TL is ${currentEuro(userMoney: userMoney5)}');

}

void controlUserMoney(int money, int minValue) {
  if (money > minValue) {
    print('have money...');
  } else {
    print('have not money...');
  }
}

double convertToDollar(double money) {
  return money / 13.43;
}

// {int currentDollar = 13} ---> Initial value
int currentDollar(int userMoney, {int currentDollar = 13}) {
  return userMoney ~/ currentDollar;
}

int currentEuro({required int userMoney, int currentEuro = 17}) {
  return userMoney ~/ currentEuro;
}


