import 'account_model.dart';

class CurrentAccountModel extends AccountModel {
  CurrentAccountModel({
    required super.accountNumber,
    required super.agency,
    required super.balance,
    required super.bank,
    required super.user,
  });

  @override
  void toDeposit() {}

  @override
  void toWithdraw() {}
  void toLoan() {}
}
