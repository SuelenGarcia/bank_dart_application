import 'dart:io';
import '../helper/generate_random_digits.dart';

String? currentAccountInput() {
  accountInput();
  return null;
  //emprestimo
}

String? savingAccountInput() {
  accountInput();
  //somente cartão de débito
  return null;
}

String? accountInput() {
  String bank = '051';
  double balance = 0;
  String agency = '';
  String account = '';
  stdout.writeln('O código do nosso banco é: $bank');
  agency = randomDigitsGenerator(7, maxValue : 2);
  stdout.writeln('O número da sua agência: $agency');
  account = randomDigitsGenerator(7);
  stdout.writeln('O número da sua conta: $account');
  stdout
      .writeln('Conta criada com sucesso! Seu saldo inicial é de R\$$balance');
  return null;
}
