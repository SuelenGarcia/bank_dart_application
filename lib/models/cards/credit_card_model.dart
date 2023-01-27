import 'card_model.dart';

class CreditCardModel implements CardModel {
  @override
  String cvv;

  @override
  String cardFlag;

  @override
  String cardName;

  @override
  String cardNumber;

  @override
  String validThru;

  double limit;
  double amountSpent;

  CreditCardModel(
      {required this.cvv,
      required this.cardFlag,
      required this.cardName,
      required this.cardNumber,
      required this.validThru,
      required this.limit,
      required this.amountSpent});
      
}
