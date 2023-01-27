String? monthlyIncomeValidation(String? income) {
  if (income == null || income.trim().isEmpty) {
    return null;
  } else {
    bool isValidIncome =
        RegExp(r'^([0-9]{1,3})*(,|\.)[0-9]{2}$').hasMatch(income);
    if (!isValidIncome) {
      return 'Digite uma renda mensal válida!';
    }
    return null;
  }
}