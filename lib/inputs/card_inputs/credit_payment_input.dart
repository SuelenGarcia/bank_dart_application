import 'dart:io';
import 'package:bank_dart_application/helper/require_password.dart';
import 'package:bank_dart_application/models/accounts/account_model.dart';
import 'package:bank_dart_application/models/cards/credit_card_model.dart';
import 'package:bank_dart_application/models/users/user_model.dart';
import 'package:bank_dart_application/validations/methods_validation.dart';

void creditPaymentInput({
  required UserModel userModel,
  required CreditCardModel creditCardModel,
  required AccountModel accountModel,
}) {

  double limit = creditCardModel.limit;

    stdout.writeln('|||  PAGAR COM CRÉDITO  |||');
    stdout.writeln('Digite a quantia que deseja pagar com a função crédito:');

    String? inputPay = stdin.readLineSync();
    String? isValid = methodsValidation(inputPay!);
    double? paymentValue = double.tryParse(inputPay);

    if (isValid == null) {
      stdout.writeln('Por favor, digite somente números ou um valor válido!');
      inputPay = stdin.readLineSync()!;
      paymentValue = double.tryParse(inputPay);

      if (paymentValue! > limit) {
        stdout.writeln('Limite insuficiente!');
        return;
      }
    } else {
      requirePassword(userModel: userModel);

      double limit = creditCardModel.limit - paymentValue!;

      double amountSpent = creditCardModel.amountSpent += paymentValue;
      // valor total gasto = valor gasto + valor gasto atual

      stdout.writeln('O pagamento foi aprovado com sucesso!');

      stdout.writeln(
          'O valor total que foi gasto no seu cartão foi de $amountSpent.');

      stdout.writeln('O seu limite atual ficou no valor de R\$$limit.');
    }
  }

