import 'dart:io';
import 'package:bank_dart_application/helper/check_current_account.dart';
import 'package:bank_dart_application/inputs/card_inputs/credit_payment_input.dart';
import 'package:bank_dart_application/inputs/deposit_inputs/to_deposit_input.dart';
import 'package:bank_dart_application/inputs/withdraw_inputs/to_withdraw_input.dart';
import 'package:bank_dart_application/models/accounts/account_model.dart';
import 'package:bank_dart_application/models/accounts/savings_account_model.dart';
import 'package:bank_dart_application/models/cards/credit_card_model.dart';
import 'package:bank_dart_application/models/users/user_model.dart';
import 'card_inputs/debit_payment_input.dart';

void interactiveStartMenu({
  required AccountModel accountModel,
  required UserModel userModel,
}) {
  stdout.writeln('||||  MENU  ||||');
  bool success = false;
  do {
    stdout.writeln('Por favor, digite o número da opção desejada:');
    stdout.writeln('(1) - Sacar');
    stdout.writeln('(2) - Empréstimo');
    stdout.writeln('(3) - Depósito');
    stdout.writeln('(4) - Rendimento');
    stdout.writeln('(5) - Pagar com débito');
    stdout.writeln('(6) - Pagar com crédito');
    stdout.writeln('(7) - Sair');

    final input = stdin.readLineSync();

    switch (input) {
      case ('1'):
        toWithdraw(accountModel: accountModel, userModel: userModel);
        break;
      case ('2'):
        checkCurrentAccount(
          userModel: userModel,
          accountModel: accountModel,
        );
        break;
      case ('3'):
        toDepositInput(
          userModel: userModel,
          accountModel: accountModel,
        );
        break;
      case ('4'):
        checkCurrentAccount(
          accountModel: accountModel,
          userModel: userModel,
        );
        break;
      case ('5'):
        debitPaymentInput(
          accountModel: accountModel,
          userModel: userModel,
        );
        break;
      case ('6'):
        if (accountModel is SavingsAccountModel) {
          stdout.writeln('O seu cartão não possui a função crédito. Retornando ao menu.');
        } else {
          creditPaymentInput(
            userModel: userModel,
            accountModel: accountModel,
            creditCardModel: accountModel.card as CreditCardModel,
          );
        }
        break;
      case ('7'):
        stdout.writeln('Você saiu. Até a próxima...');
        success = true;
        break;
      default:
        stdout.writeln('Opção inválida, tente novamente.');
    }
  } while (!success);
}
