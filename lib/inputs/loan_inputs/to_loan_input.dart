import 'dart:io';
import 'package:bank_dart_application/helper/check_income.dart';
import 'package:bank_dart_application/inputs/account_inputs/choose_account_type.dart';
import 'package:bank_dart_application/inputs/loan_inputs/calc_loan_input.dart';
import 'package:bank_dart_application/helper/require_password.dart';
import 'package:bank_dart_application/inputs/loan_inputs/loan_value_input.dart';
import 'package:bank_dart_application/models/accounts/current_account_model.dart';
import 'package:bank_dart_application/models/users/user_model.dart';
import '../../models/accounts/current_account_model.dart';

void toLoan({
  required UserModel userModel,
  required AccountType accountType,
  required CurrentAccountModel currentAccountModel,
}) {
  
  double? income = userModel.monthlyIncome;

  checkIncome(userModel: userModel, income: income);
  if (income == null) {
    stdout.writeln('Voltando ao menu inicial...');
  } else {
    final loan = loanValueInput(
      calcLoanInput: calcLoanInput(
        userModel: userModel,
        income: income,
      ),
      userModel: userModel,
      accountModel: currentAccountModel,
    );
    //loan = emprestimo aprovado inserido pelo usuario e adicionado a fatura do cartão

    requirePassword(userModel: userModel);

    double aprovedLoan = currentAccountModel.loan(inputLoan: loan);

    stdout.writeln(
        'O empréstimo foi aprovado. Já adicionamos ao seu saldo que ficou no valor de R\$$aprovedLoan.');
  }
}
