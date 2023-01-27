import 'dart:io';
import '../../helper/generate_random_digits.dart';
import '../../inputs/user_inputs.dart';

void main() {
  card();
}

class CardModel {
  String cardNumber;
  String cardFlag;
  String cvv;
  String cardName;
  String validThru;

  CardModel({
    required this.cardNumber,
    required this.cardFlag,
    required this.cvv,
    required this.cardName,
    required this.validThru,
  });
}

String? card() {
  String flag = 'MasterCard';
  stdout.writeln('Seu cartão está pronto! A bandeira é $flag.');

  String cardNumber = randomDigitsGenerator(16);
  stdout.writeln('O número do seu cartão é: $cardNumber.');

  String cvv = randomDigitsGenerator(3);
  stdout.writeln('O número do cvv do seu cartão é: $cvv');


}
