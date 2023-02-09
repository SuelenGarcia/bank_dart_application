import 'dart:io';
import 'package:bank_dart_application/models/accounts/account_model.dart';
import 'package:bank_dart_application/models/users/user_model.dart';
import '../helper/generate_random_digits.dart';

AccountModel createAccount({required UserModel userModel}) {
  String agency = '';
  String bank = '051';
  String accountNumber = '';
  double balance = 0;

  stdout.writeln('O código do nosso banco é: $bank');
  agency = randomDigitsGenerator(7, maxValue: 2);
  stdout.writeln('O número da sua agência: $agency');
  accountNumber = randomDigitsGenerator(7);
  stdout.writeln('O número da sua conta: $accountNumber');
  stdout.writeln('Conta criada com sucesso! Seu saldo é de R\$$balance');
  String userName = userModel.name;
  stdout.write('A conta ficou em seu nome: $userName');

  AccountModel accountModel = AccountModel(
    user: userName,
    agency: agency,
    bank: bank,
    accountNumber: accountNumber,
    balance: balance,
  );
  return accountModel;
}
