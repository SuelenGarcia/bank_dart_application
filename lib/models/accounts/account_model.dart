import '../users/user_model.dart';

class AccountModel {
  UserModel user;
  String agency;
  String bank;
  String accountNumber;
  String balance;

  AccountModel({
    required this.user,
    required this.agency,
    required this.bank,
    required this.accountNumber,
    required this.balance,
  });

  void withdraw() {}
  void deposit() {}
}
