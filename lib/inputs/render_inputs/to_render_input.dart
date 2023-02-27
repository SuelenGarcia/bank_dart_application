import 'dart:io';
import 'package:bank_dart_application/helper/access_denied_account_type.dart';
import 'package:bank_dart_application/models/accounts/account_model.dart';
import 'package:bank_dart_application/validations/methods_validation.dart';

void toRender(AccountModel accountModel) {

  double? income = accountModel.user.monthlyIncome;

  stdout.writeln('|||  RENDIMENTO  |||');
  stdout.writeln(
      'Digite a quantidade de dias que gostaria de fazer a simulação de rendimento:');
  String? inputDays = stdin.readLineSync();

  String? isValid = methodsValidation(inputDays!);
  if (isValid == null) {
    stdout.writeln('Por favor, digite somente números.');
    inputDays = stdin.readLineSync()!;
  }

  double balance = accountModel.balance;

  String balanceString = accountModel.balance.toString();

  if (balance == 0 || balanceString.trim().isEmpty) {
    stdout.writeln(
        'Você não possui saldo, a simulação será feita com a sua renda mensal.');
    income ??= 0;
    //     ^ é o mesmo que:
    //     if (income == null) {
    //       income = 0;
    //    }
    balance = income;
  }
  if (balance == 0 && income == 0) {
    stdout.writeln(
        'Você também não possui uma renda logo não sera possível fazer a simulação.');
    accessDeniedAccountType();
  } else {
    double inputDaysInt = double.parse(inputDays);

    double renderPerCent = 0.02;

    final double selectedTime = (inputDaysInt * renderPerCent) * inputDaysInt;
    selectedTime.toStringAsFixed(2);
    stdout.writeln('Nesse tempo, o seu saldo renderia: R\$$selectedTime.');

    final double halfOfTime = (balance * renderPerCent) * (inputDaysInt / 2);
    halfOfTime.toStringAsFixed(2);
    stdout.writeln(
        'Na metade desse tempo, o seu saldo renderia: R\$$halfOfTime.');

    final double doubleOfTime = (balance * renderPerCent) * (inputDaysInt * 2);
    doubleOfTime.toStringAsFixed(2);
    stdout.writeln(
        'No dobro desse tempo, o seu saldo renderia: R\$$doubleOfTime.');
  }
}
