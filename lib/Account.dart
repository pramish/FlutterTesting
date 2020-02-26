class Account {
  double balance = 0.0;
  void deposit(amount) {
    balance = balance + amount;
  }

  void withdraw(amount) {
    if (amount <= balance) {
      balance = balance - amount;
    } else {
      print("Sorry! You do not have enough balance to withdraw");
    }
  }
}
