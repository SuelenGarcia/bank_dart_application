import '../../models/users/user_model.dart';

List<double> calcLoanInput({
  required UserModel userModel,
  required double? income,
}) {
  double income = userModel.monthlyIncome!;
  double minLoanValue = income * 0.2;
  double maxLoanValue = income * 0.7;

  return [minLoanValue, maxLoanValue];
}
