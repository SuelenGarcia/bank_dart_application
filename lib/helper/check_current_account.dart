import 'dart:io';
import 'package:bank_dart_application/helper/access_denied_account_type.dart';
import 'package:bank_dart_application/inputs/account_inputs/choose_account_type.dart';
import 'package:bank_dart_application/inputs/loan_inputs/to_loan_input.dart';
import 'package:bank_dart_application/models/accounts/account_model.dart';
import 'package:bank_dart_application/models/accounts/current_account_model.dart';
import 'package:bank_dart_application/models/users/user_model.dart';
import '../inputs/account_inputs/choose_account_type.dart';

void checkCurrentAccount({
  required AccountModel accountModel,
  required UserModel userModel,
}) {
  stdout.writeln(
      'Para prosseguir nesse menu, precisaremos checar se sua conta é corrente.');
      AccountType currentAccount = AccountType.current;
  if (accountModel is CurrentAccountModel) {
    stdout.writeln('Está tudo certo com a sua conta!');
    toLoan(
        userModel: userModel, currentAccountModel: accountModel, accountType: currentAccount,);
  } else {
     stdout.writeln('A sua conta é do tipo conta poupança.');
    return accessDeniedAccountType();
  }
}
