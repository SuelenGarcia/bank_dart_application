import 'account_model.dart';
import '../cards/card_model.dart';
import '../users/user_model.dart';

class SavingsAccountModel extends AccountModel {

  SavingsAccountModel(
      {required super.accountNumber,
      required super.agency,
      required super.balance,
      required super.bank,
      required super.user,
      required super.card});

  @override
  void toDeposit() {}

  @override
  void toWithdraw() {}
  
  void toRender() {}
}
