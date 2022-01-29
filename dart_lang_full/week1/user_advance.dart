void main() {
  String userName = "bahadir";

  // we can declare variables with the var keyword
  // type of userName2 --> string
  var userName2 = "enes";
  // type of price --> integer
  var price = 24;

  /* 
    Final - Const
    We use it to define variables that we don't want to change.
    final --> value can be assigned when the project runs
    value assignment can only be done on the code side
  */
  final String bankName = "BG Bank";
  const String bankName2 = "BG Bank";

  //----------- Scenario ----------------

  const String bankNameSpecial = "BG Bank";
  const String user1 = "Bank 1 customer";
  const double user1Money = 1000.00;

  const String user2 = "Bank 2 customer";
  int user2Money = 5000;

  user2Money -= user1Money.toInt();
  print("$user2 money: $user2Money");
}
