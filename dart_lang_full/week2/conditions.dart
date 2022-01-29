

void main() {
  final int money = 10000;
  String userName = "bahadir";

  // bool --> Boolean (True,False)
  bool isCustomerRich = false;

  if (money >= 10000) {
    print("You are rich");
  } else {
    print("You are not rich");
  }

  // --------- Senario -----------

  int newCustomerMoney = 100;
  const int bankingCost = 50;

  if (newCustomerMoney > bankingCost) {
    print("Welcome sir");
    newCustomerMoney -= bankingCost;
  } else {
    print('please take your turn');
  }

  // -------- Senario 2 -----------
  final String company1 = "Tesla";
  final String company2 = "Apple";
  final String company3 = "Lenovo";
  final String company4 = "Amazon";

  const int companyLength = 5;
  String results = "";

  if (company1.length > companyLength) {
    results += company1;
  }
  if (company2.length > companyLength) {
    results += company2;
  }
  if (company3.length > companyLength) {
    results += company3;
  }
  if (company4.length > companyLength) {
    results += company4;
  }

  // result.isEmpty = (results.length == 0)
  if (results.isEmpty) {
    print("not found");
  } else {
    print(results);
  }
}
