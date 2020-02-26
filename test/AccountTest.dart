import 'package:flutter_test/flutter_test.dart';
import 'package:flutterunittest/Account.dart';

void main() {
  test('Deposit money', () {
    final account = Account();
    account.deposit(100);
    expect(account.balance, account.balance);
    print(account.balance);
    print('Amount Successfully deposited');
  });

  test('Withdraw money', () {
    final account = Account();
    account.deposit(100);
    account.withdraw(10);
    print(account.balance);
    expect(account.balance, account.balance);
  });
}
