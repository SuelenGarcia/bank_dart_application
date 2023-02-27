import 'package:bank_dart_application/inputs/interactive_menu.dart';
import 'package:bank_dart_application/inputs/account_inputs/account_input.dart';
import 'package:bank_dart_application/inputs/account_inputs/choose_account_type.dart';
import 'package:bank_dart_application/models/accounts/account_model.dart';
import 'inputs/user_inputs/user_inputs.dart';
import 'models/users/user_model.dart';

void main() {
  UserModel user = createUser();
  AccountType accountType = chooseAccountType();
  AccountModel account = createAccount(
    userModel: user,
    accountType: accountType,
  );
  interactiveStartMenu(
    accountModel: account,
    userModel: user,
  );
}
