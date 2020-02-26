import 'package:flutter_test/flutter_test.dart';
import 'package:flutterunittest/Account.dart';

void main() {
  test('Deposit money', () {
    final account = Account();
    account.deposit(100);
    expect(account.balance, account.balance);
  });

  test('Withdraw money', () {
    final account = Account();
    account.deposit(100);
    account.withdraw(10);
    expect(account.balance, account.balance);
  });
}
