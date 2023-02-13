import 'package:bank_dart_application/inputs/choose_account_type.dart';
import 'package:bank_dart_application/models/cards/card_model.dart';
import 'package:bank_dart_application/models/cards/credit_card_model.dart';
import 'package:bank_dart_application/models/users/user_model.dart';
import 'package:bank_dart_application/validations/monthly_income.dart';

CardModel defineCardType({required UserModel userModel}) {
  
  CardModel debitCard = CardModel as CardModel;
  CreditCardModel creditCard = CreditCardModel as CreditCardModel;
  final income = userModel.monthlyIncome;
  if (income == null) {
    return debitCard;
  } else {
    return creditCard;
  }
}
