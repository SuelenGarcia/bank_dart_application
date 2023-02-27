import 'package:bank_dart_application/models/cards/card_model.dart';

class DebitCardModel extends CardModel {
  DebitCardModel({
    required super.cardNumber,
    required super.flag,
    required super.cvv,
    required super.cardName,
    required super.validThru,
  });
}
