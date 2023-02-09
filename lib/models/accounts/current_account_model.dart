import 'account_model.dart';
import '../users/user_model.dart';

class CurrentAccountModel extends AccountModel {

  CurrentAccountModel({
    required super.accountNumber,
    required super.agency,
    required super.balance,
    required super.bank,
    required super.user,
  });

  @override
  void deposit() {
  }
  @override
  void withdraw() {
  }
  void loan() {}
}
