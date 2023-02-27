import 'dart:io';
import 'package:bank_dart_application/models/users/user_model.dart';
import '../account_inputs/choose_account_type.dart';
import 'credit_card_model_input.dart';
import 'debit_card_model_input.dart';

void choosePaymentCardInput({required AccountType accountType, required UserModel userModel,}){

  final income = userModel.monthlyIncome;
  if (income == null || accountType == AccountType.savings) {
    stdout.writeln('A conta poupança te possibilita ter um cartão de débito!');
    createDebitCard(userModel: userModel);
  } else {
    stdout.writeln(
        'A conta corrente te possibilita ter um cartão com função de crédito e débito!');
    createCreditCard(userModel: userModel,);
  }
}