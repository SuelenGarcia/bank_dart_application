import 'dart:io';
import 'package:bank_dart_application/validations/methods_validation.dart';
import '../../models/accounts/account_model.dart';
import '../../models/users/user_model.dart';

double withdrawValue({
  required AccountModel accountModel,
  required UserModel userModel,
}) {
  stdout.writeln('||||  SAQUE  ||||');
  stdout.writeln('Digite a quantia que deseja sacar:');

  String withdrawInput = stdin.readLineSync()!;

  double withdraw = double.parse(withdrawInput);
  
  double balance = accountModel.balance;

  String? isValid = methodsValidation(withdrawInput);
  if (isValid == null) {
    stdout
        .writeln('Saldo insuficiente, verifique seu saldo e tente novamente.');
    return withdraw = 0.0;
  }
  if (withdraw > balance) {
    stdout.writeln(
        'Você está tentando sacar um valor maior do que o que possui em sua conta.');
    return withdraw = 0.0;
  } else {
    return withdraw;
  }
}
