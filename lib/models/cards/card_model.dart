class CardModel {
  String cardNumber;
  String flag;
  String cvv;
  String cardName;
  String validThru;

  CardModel({
    required this.cardNumber,
    required this.flag,
    required this.cvv,
    required this.cardName,
    required this.validThru,
  });

  @override
  String toString() {
    return '$runtimeType(cardNumber: $cardNumber, flag: $flag, cvv: $cvv, cardName: $cardName, validThru: $validThru)';
  }
}
