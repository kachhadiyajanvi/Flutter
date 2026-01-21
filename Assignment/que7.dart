import 'dart:io';

class BankAccount {
  double _balance = 0.0;

  void deposit(double amount) {
    if (amount > 0) {
      _balance += amount;
      print("Deposit successful. Amount: ₹$amount");
    } else {
      print("Invalid deposit amount.");
    }
  }

  void withdraw(double amount) {
    if (amount <= 0) {
      print("Invalid withdrawal amount.");
    } else if (amount > _balance) {
      print("Insufficient balance.");
    } else {
      _balance -= amount;
      print("Withdrawal successful. Amount: ₹$amount");
    }
  }

  void checkBalance() {
    print("Current Balance: ₹$_balance");
  }
}

void main() {
  BankAccount account = BankAccount();

  account.deposit(5000);
  account.withdraw(2000);
  account.checkBalance();
  account.withdraw(4000);
}
