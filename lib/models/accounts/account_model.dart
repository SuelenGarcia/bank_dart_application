// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bank_dart_application/models/cards/card_model.dart';
import 'package:bank_dart_application/models/users/user_model.dart';

class AccountModel {
  String user;
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

  void toWithdraw() {}

  void toDeposit() {}
}
