class Account {
  double balance = 0.0;
  void deposit(amount) {
    balance = balance + amount;
    print("$amount dollars successfully deposited.");
  }

  void withdraw(amount) {
    if (amount <= balance) {
      balance = balance - amount;
      print("$amount dollars successfully withdrew.");
    } else {
      print("Sorry! You do not have enough balance to withdraw");
    }
  }
}
