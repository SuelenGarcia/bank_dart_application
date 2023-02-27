import 'dart:io';
import 'package:bank_dart_application/helper/access_denied_account_type.dart';
import 'package:bank_dart_application/inputs/render_inputs/to_render_input.dart';
import 'package:bank_dart_application/models/accounts/account_model.dart';
import 'package:bank_dart_application/models/accounts/savings_account_model.dart';

void checkSavingsAccount({
  required AccountModel accountModel,
}) {

  stdout.writeln(
      'Para prosseguir nesse menu, precisaremos checar se sua conta é poupança.');
  if (accountModel is SavingsAccountModel) {
    stdout.writeln('Está tudo certo com a sua conta!');
    toRender(accountModel);
  } else {
    stdout.writeln('A sua conta é do tipo conta corrente.');
    return accessDeniedAccountType();
  }
}

