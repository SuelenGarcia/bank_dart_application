import 'dart:io';
import 'package:bank_dart_application/helper/date_time_card.dart';
import 'package:bank_dart_application/models/cards/debit_card_model.dart';
import 'package:bank_dart_application/models/users/user_model.dart';
import '../../helper/generate_random_digits.dart';

DebitCardModel createDebitCard({required UserModel userModel,}) {
  String flag = 'MasterCard';

  stdout.writeln('Seu cartão de débito está pronto! A bandeira é $flag.');

  String cardNumber = randomDigitsGenerator(16);
  stdout.writeln('O número do seu cartão é: $cardNumber.');

  String cvv = randomDigitsGenerator(3);
  stdout.writeln('O número do cvv do seu cartão é: $cvv.');

  String validThru = generateValidThruCard();
  stdout.writeln('A data de validade do cartão é: $validThru.');

  String userName = userModel.name;
  stdout.writeln('O nome que ficou no seu cartão é: $userName.');

  DebitCardModel cardModel = DebitCardModel(
    cardNumber: cardNumber,
    flag: flag,
    cvv: cvv,
    cardName: userName,
    validThru: validThru,
  );
  return cardModel;
}


