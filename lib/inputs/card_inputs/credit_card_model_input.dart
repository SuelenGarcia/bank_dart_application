import 'dart:io';
import '../../helper/credit_card_limit.dart';
import '../../helper/date_time_card.dart';
import '../../helper/generate_random_digits.dart';
import '../../models/cards/credit_card_model.dart';
import '../../models/users/user_model.dart';

CreditCardModel createCreditCard({required UserModel userModel}) {
  String flag = 'MasterCard';

  stdout.writeln('Seu cartão de crédito está pronto! A bandeira é $flag.');

  String cardNumber = randomDigitsGenerator(16);
  stdout.writeln('O número do seu cartão é: $cardNumber.');

  String cvv = randomDigitsGenerator(3);
  stdout.writeln('O número do cvv do seu cartão é: $cvv.');

  String validThru = generateValidThruCard();
  stdout.writeln('A data de validade do cartão é: $validThru.');

  String userName = userModel.name;
  stdout.writeln('O nome que ficou no seu cartão é: $userName.');

  double income = userModel.monthlyIncome!;

  double limit = creditCardLimit(income);

  CreditCardModel cardModel = CreditCardModel(
    cvv: cvv,
    flag: flag,
    cardName: userName,
    cardNumber: cardNumber,
    validThru: validThru,
    limit: limit,
    amountSpent: 0,
  );
  return cardModel;
}