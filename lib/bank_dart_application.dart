import 'package:bank_dart_application/inputs/account_input.dart';
import 'package:bank_dart_application/inputs/card_model_input.dart';
import 'package:bank_dart_application/inputs/to_deposit_input.dart';
import 'package:bank_dart_application/models/accounts/account_model.dart';
import 'inputs/user_inputs.dart';
import 'models/users/user_model.dart';

void main() {
  UserModel user = createUser(); //ok
  createCard(userModel: user); //ok
  createAccount(userModel: user);
  //corrigir parte de criar a conta
}
