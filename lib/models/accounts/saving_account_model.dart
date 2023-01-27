import 'account_model.dart';
import '../cards/card_model.dart';
import '../users/user_model.dart';

class SavingAccountModel implements AccountModel {
  @override
  String accountNumber;

  @override
  String agency;

  @override
  String balance;

  @override
  String bank;

  @override
  UserModel user;

  CardModel card;

  SavingAccountModel({
    required this.accountNumber,
    required this.agency,
    required this.balance,
    required this.bank,
    required this.user,
    required this.card
  });

  @override
  void deposit() {
  }

  @override
  void withdraw() {
    
  }
  void render() {}
}
