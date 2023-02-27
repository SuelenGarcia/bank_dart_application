import 'dart:io';
import 'package:bank_dart_application/inputs/account_inputs/choose_account_type.dart';
import 'package:bank_dart_application/inputs/card_inputs/define_card_type_input.dart';
import 'package:bank_dart_application/models/accounts/account_model.dart';
import 'package:bank_dart_application/models/accounts/current_account_model.dart';
import 'package:bank_dart_application/models/accounts/savings_account_model.dart';
import 'package:bank_dart_application/models/cards/card_model.dart';
import 'package:bank_dart_application/models/cards/credit_card_model.dart';
import 'package:bank_dart_application/models/users/user_model.dart';
import '../../helper/generate_random_digits.dart';

AccountModel createAccount({
  required UserModel userModel,
  required AccountType accountType,
}) {
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
  stdout.writeln('A conta ficou em seu nome: $userName');

  CardModel cardModel =
      defineCardType(userModel: userModel, accountType: accountType);

  if (accountType == AccountType.current) {
    CurrentAccountModel currentAccount = CurrentAccountModel(
      accountNumber: accountNumber,
      agency: agency,
      balance: balance,
      bank: bank,
      user: userModel,
      card: cardModel,
    );
    return currentAccount;
  } else {
    SavingsAccountModel savingsAccount = SavingsAccountModel(
      accountNumber: accountNumber,
      agency: agency,
      balance: balance,
      bank: bank,
      user: userModel,
      card: cardModel,
    );
    return savingsAccount;
  }
}
