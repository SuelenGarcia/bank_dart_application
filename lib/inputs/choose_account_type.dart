import 'dart:io';
import 'package:bank_dart_application/models/accounts/account_model.dart';
import 'package:bank_dart_application/models/accounts/current_account_model.dart';
import 'package:bank_dart_application/models/accounts/savings_account_model.dart';
import 'package:bank_dart_application/models/users/user_model.dart';

class ChooseAccountType {

  AccountModel createAccount(UserModel userModel) {

    CurrentAccountModel currentAccount =
        CurrentAccountModel as CurrentAccountModel;

    SavingsAccountModel savingsAccount =
        SavingsAccountModel as SavingsAccountModel;

    stdout.writeln('Escolha qual tipo de conta você deseja');
    final input = stdin.readLineSync();
    do {
      stdout.writeln('Digite o número correspondente a conta:');
      stdout.writeln('(1) - Conta corrente');
      stdout.writeln('(2) - Conta poupança');
    }
    while (input != '1' && input != '2');
    if (input == '1') {
      stdout.writeln('Você selecionou a conta corrente.');
      currentAccount;
      //retornar conta corrente
    }
    if (input == '2') {
      stdout.writeln('Você selecionou a conta poupança.');
      savingsAccount;
      //retornar poupança
    }
    return createAccount(userModel);
  }
}
