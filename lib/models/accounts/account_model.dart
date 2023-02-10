import '../users/user_model.dart';

class AccountModel {
  String user;
  String agency;
  String bank;
  String accountNumber;
  double balance;

  AccountModel({
    required this.user,
    required this.agency,
    required this.bank,
    required this.accountNumber,
    required this.balance,
  });

  void toWithdraw() {}

  void toDeposit() {}
}
