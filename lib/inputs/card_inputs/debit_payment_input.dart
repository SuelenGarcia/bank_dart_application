import 'dart:io';
import 'package:bank_dart_application/models/accounts/account_model.dart';
import 'package:bank_dart_application/models/users/user_model.dart';
import '../../helper/require_password.dart';
import '../../validations/methods_validation.dart';

void debitPaymentInput({
  required AccountModel accountModel,
  required UserModel userModel,
}) {
  double balance = accountModel.balance;

  stdout.writeln('|||  PAGAR COM DÉBITO  |||');
  stdout.writeln('Digite a quantia que deseja pagar com o cartão de débito:');

  String? inputPay = stdin.readLineSync();

  String? isValid = methodsValidation(inputPay!);

  double? paymentValue = double.tryParse(inputPay);

  if (isValid == null) {
    stdout.writeln('Por favor, digite somente números ou um valor válido!');
    inputPay = stdin.readLineSync()!;
    paymentValue = double.tryParse(inputPay);

    if (paymentValue! > balance) {
      stdout.writeln('Saldo insuficiente!');
      return;
    }
  } else {
    requirePassword(userModel: userModel);

    double balance = accountModel.balance -= paymentValue!;
    // saldo (atual) = saldo - valor gasto atual

    stdout.writeln('O pagamento foi aprovado com sucesso!');
    stdout.writeln('O seu saldo ficou no valor de R\$$balance.');
  }
}
