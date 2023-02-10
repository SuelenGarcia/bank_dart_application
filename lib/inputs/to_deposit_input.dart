import 'dart:io';

String toDeposit() {
  stdout.writeln('||||  DEPÓSITO  ||||');
  stdout.writeln(
      'Por favor, digite a quantia que deseja depositar na sua conta:');

  String? depositInput = stdin.readLineSync();
  if (depositInput == null || depositInput.trim().isEmpty) {
    stdout.writeln(
        'Valor inválido, nenhum valor será adicionado à sua conta. Tente novamente.');
    depositInput = '0';
  }

  bool isValidValue =
      RegExp(r'^([0-9]{1,})*(,|\.)?([0-9]{1,2})$').hasMatch(depositInput);
  if (!isValidValue) {
    stdout.writeln('Valor inválido, digite somente números.');
    depositInput = '0';
    toDeposit();
  }

  double depositInputDouble = double.parse(depositInput);

  if (depositInputDouble > 5000) {
    stdout.writeln(
        'Valores acima de R\$5000 não são permitidos. Tente novamente.');
    toDeposit();
  }
  String balance = depositInputDouble.toString();
  stdout.writeln('O valor de $balance foi adicionado a sua conta.');
  return balance;
}
