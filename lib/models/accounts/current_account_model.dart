import '../cards/credit_card_model.dart';
import 'account_model.dart';

class CurrentAccountModel extends AccountModel {
  CurrentAccountModel({
    required super.accountNumber,
    required super.agency,
    required super.balance,
    required super.bank,
    required super.user,
    required super.card,
  });

  double loan({required double inputLoan}) {
    balance += inputLoan;

    CreditCardModel creditCard = card as CreditCardModel;
    
    creditCard.amountSpent += inputLoan;
  
    return balance;

  }
}
