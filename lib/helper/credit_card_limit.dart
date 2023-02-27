import 'dart:io';

double creditCardLimit(double monthlyIncome) {
  double limit = 0;
  if (monthlyIncome <= 1000) {
    limit = monthlyIncome * 0.1;
  } else if (monthlyIncome <= 2500) {
    limit = monthlyIncome * 0.25;
  } else if (monthlyIncome <= 5000) {
    limit = monthlyIncome * 0.4;
  } else if (monthlyIncome <= 10000) {
    limit = monthlyIncome * 0.6;
  } else {
    monthlyIncome > 10000;
    limit = monthlyIncome * 0.75;
  }
  limit = limit.ceilToDouble();
  stdout.writeln('O seu limite é: R\$${limit.toStringAsFixed(2)}.');
  stdout.writeln('CREDIT CARD LIMIT');
  return limit;
}
