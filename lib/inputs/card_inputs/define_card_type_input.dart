import 'dart:io';
import 'package:bank_dart_application/inputs/account_inputs/choose_account_type.dart';
import 'package:bank_dart_application/models/cards/card_model.dart';
import 'package:bank_dart_application/models/users/user_model.dart';
import 'credit_card_model_input.dart';
import 'debit_card_model_input.dart';

CardModel defineCardType({
  required UserModel userModel,
  required AccountType accountType,
}) {
  final income = userModel.monthlyIncome;
  if (income == null || accountType == AccountType.savings) {
    stdout.writeln('A conta poupança te possibilita ter um cartão de débito!');
    return createDebitCard(userModel: userModel);
  } else {
    stdout.writeln(
        'A conta corrente te possibilita ter um cartão com função de crédito e débito!');
    return createCreditCard(userModel: userModel,);
  }
}
