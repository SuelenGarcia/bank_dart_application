import 'dart:io';

enum AccountType { current, savings }

AccountType chooseAccountType() {
  String input;

  stdout.writeln('Escolha qual tipo de conta você deseja');

  do {
    stdout.writeln('Digite o número correspondente a conta:');
    stdout.writeln('(1) - Conta corrente');
    stdout.writeln('(2) - Conta poupança');

    input = stdin.readLineSync()!;
  } while (input != '1' && input != '2');
  if (input == '1') {
    stdout.writeln('Você selecionou a conta corrente.');
    return AccountType.current;
  } else {
    stdout.writeln('Você selecionou a conta poupança.');
    return AccountType.savings;
  }
}
