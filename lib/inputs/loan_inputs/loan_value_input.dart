import 'dart:io';
import 'package:bank_dart_application/models/accounts/account_model.dart';
import 'package:bank_dart_application/models/users/user_model.dart';
import '../../validations/methods_input_validation.dart';

double loanValueInput({
  required UserModel userModel,
  required List<double> calcLoanInput,
  required AccountModel accountModel,
}) {

  stdout.writeln('||||  EMPRÉSTIMO  ||||');
  stdout.writeln('Digite a quantia que deseja pegar emprestada:');

  String? input = stdin.readLineSync();

  String? validInput = methodsValidation(input!);

  double? inputLoan = double.tryParse(validInput!);

  if (validInput.trim().isEmpty || inputLoan == null) {
    stdout.writeln('Por favor, digite somente números ou um valor válido!');
    input = stdin.readLineSync()!;
    inputLoan = double.tryParse(input);
  } else {
    double? minValue = calcLoanInput[0];
    double? maxValue = calcLoanInput[1];

    if (inputLoan < minValue || inputLoan > maxValue) {
      stdout.writeln(
          'O valor do empréstimo deve ser de no máximo 70% e de no mínimo 20% da sua renda mensal!');
      input = stdin.readLineSync()!;
      inputLoan = double.tryParse(input);
    }
  }
  return inputLoan!;
}
