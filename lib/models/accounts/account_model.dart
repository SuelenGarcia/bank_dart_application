import 'package:bank_dart_application/models/cards/card_model.dart';
import 'package:bank_dart_application/models/users/user_model.dart';

abstract class AccountModel {
  UserModel user;
  String agency;
  String bank;
  String accountNumber;
  double balance;
  CardModel card;

  AccountModel({
    required this.user,
    required this.agency,
    required this.bank,
    required this.accountNumber,
    required this.balance,
    required this.card,
  });

  double toWithdraw(double withdrawValue) {
    balance -= withdrawValue;
    return balance;
  }

  double toDeposit(double depositValue) {
    balance += depositValue;
    return balance;
  }

  @override
  String toString() {
    return '$runtimeType(user: $user, agency: $agency, bank: $bank, accountNumber: $accountNumber, balance: $balance, card: $card)';
  }
}
