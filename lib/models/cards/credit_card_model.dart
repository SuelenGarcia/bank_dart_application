import 'card_model.dart';

class CreditCardModel extends CardModel {
  
  double limit;
  double amountSpent;

  CreditCardModel({
    required super.cvv,
      required super.flag,
      required super.cardName,
      required super.cardNumber,
      required super.validThru,
      required this.limit,
      required this.amountSpent,});
}
