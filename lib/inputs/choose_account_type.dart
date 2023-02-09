import 'dart:io';
String? chooseAccountType() {

  stdout.writeln('Escolha qual tipo de conta você deseja');
  String? selectedAccount;

  do {
    stdout.writeln('Digite 1 para conta corrente e 2 para conta poupança:');
    selectedAccount = stdin.readLineSync();
  } while (selectedAccount != '1' && selectedAccount != '2');
  if (selectedAccount == '1') {
    stdout.writeln('Você selecionou a conta corrente.');
  }
  if (selectedAccount == '2') {
    stdout.writeln('Você selecionou a conta poupança.');
  }
  return selectedAccount;
}