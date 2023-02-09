import 'package:bank_dart_application/inputs/account_input.dart';
import 'package:bank_dart_application/inputs/card_model_input.dart';
import 'inputs/user_inputs.dart';
import 'models/users/user_model.dart';

void main() {
  UserModel user = createUser();
  createCard(userModel: user);
  createAccount(userModel: user);
}
