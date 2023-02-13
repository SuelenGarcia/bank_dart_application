import 'dart:io';
import 'package:bank_dart_application/inputs/card_model_input.dart';
import 'package:bank_dart_application/inputs/choose_account_type.dart';
import 'package:bank_dart_application/inputs/define_card_type_input.dart';
import 'package:bank_dart_application/models/accounts/account_model.dart';
import 'package:bank_dart_application/models/accounts/current_account_model.dart';
import 'package:bank_dart_application/models/accounts/savings_account_model.dart';
import 'package:bank_dart_application/models/cards/card_model.dart';
import 'package:bank_dart_application/models/cards/credit_card_model.dart';
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

  CardModel cardModel = defineCardType(userModel: userModel);

  CardModel debitCard = cardModel;
  if () {
    //fazer o if
    CurrentAccountModel currentAccount = CurrentAccountModel(
      accountNumber: accountNumber,
      agency: agency,
      balance: balance,
      bank: bank,
      user: userName,
      card: debitCard, //creditCard preciso ajeitar. botei só pra parar de dar erro
    );
    return currentAccount;
  } else {
    SavingsAccountModel savingsAccount = SavingsAccountModel(
      accountNumber: accountNumber,
      agency: agency,
      balance: balance,
      bank: bank,
      user: userName,
      card: debitCard,
    );
    return savingsAccount;
  }
}
