import 'dart:io';
import 'package:bank_dart_application/models/accounts/account_model.dart';

double toWithdraw({required AccountModel accountModel}) {
  stdout.writeln('||||  SAQUE  ||||');
  stdout.writeln('Digite a quantia que deseja sacar:');
  double withdraw = stdin.readLineSync() as double;
  double balance = accountModel.balance;

  while (withdraw > balance) {
    stdout
        .writeln('Saldo insuficiente, verifique seu saldo e tente novamente.');
    toWithdraw(accountModel: accountModel);
  }

  return withdraw;
}

//TO DO: falta terminar essa parte de saque