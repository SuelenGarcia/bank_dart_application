import 'dart:io';
import 'package:bank_dart_application/helper/require_password.dart';
import 'package:bank_dart_application/inputs/deposit_inputs/deposit_value_input.dart';
import 'package:bank_dart_application/models/accounts/account_model.dart';
import 'package:bank_dart_application/models/users/user_model.dart';

void toDepositInput({
  required UserModel userModel,
  required AccountModel accountModel,
}) {
  
  final depositValue =
      depositValueInput(userModel: userModel, accountModel: accountModel);

  if (depositValue != 0) {
    requirePassword(userModel: userModel);
    stdout.writeln('O valor de R\$$depositValue foi adicionado a sua conta.');

    accountModel.balance += depositValue;

    stdout.writeln('Seu saldo atual ficou no valor de R\$${accountModel.balance}.');
  } else {
    stdout.writeln('Voltando ao menu inicial...');
  }
}
