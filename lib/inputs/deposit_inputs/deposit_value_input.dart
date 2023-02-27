import 'dart:io';
import 'package:bank_dart_application/models/accounts/account_model.dart';
import 'package:bank_dart_application/models/users/user_model.dart';
import 'package:bank_dart_application/validations/methods_validation.dart';

double depositValueInput({
  required UserModel userModel,
  required AccountModel accountModel,
}) {

  stdout.writeln('||||  DEPÓSITO  ||||');
  stdout.writeln('Digite a quantia que deseja depositar em sua conta:');
  String? depositInput = stdin.readLineSync();
  String? isValid = methodsValidation(depositInput!);
  double? valueDeposit = double.tryParse(depositInput);
  if (isValid == null) { 
    stdout.writeln('Por favor, digite somente números ou um valor válido!');
    depositInput = stdin.readLineSync()!;
    valueDeposit = double.tryParse(depositInput);
  }
  
  if (valueDeposit! > 5000 || valueDeposit < 1) {
    stdout.writeln(
        'Valores acima de R\$5000 e nem abaixo de R\$1 não são permitidos. Tente novamente.');
  }
  return valueDeposit;
}
