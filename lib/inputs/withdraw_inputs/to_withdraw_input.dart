import 'dart:io';
import 'package:bank_dart_application/helper/require_password.dart';
import 'package:bank_dart_application/inputs/withdraw_inputs/withdraw_value_input.dart';
import 'package:bank_dart_application/models/accounts/account_model.dart';
import 'package:bank_dart_application/models/users/user_model.dart';

void toWithdraw({
  required AccountModel accountModel,
  required UserModel userModel,
}) {
  final withdraw =
      withdrawValue(accountModel: accountModel, userModel: userModel);
  if (withdraw != 0) {
    requirePassword(userModel: userModel);
    stdout.writeln('O valor de R\$$withdraw foi retirado de sua conta.');

    accountModel.balance -= withdraw;

    stdout.writeln('Seu saldo atual ficou no valor de R\$${accountModel.balance}.');
  } else {
    stdout.writeln('Voltando ao menu inicial...');
  }
}
