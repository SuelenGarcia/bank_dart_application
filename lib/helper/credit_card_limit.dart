import 'dart:io';

void main() {
  creditCardLimit();
}

double creditCardLimit() {
  double limit = 0;
  stdout.writeln('Qual a sua renda mensal:');
  String? incomeUserValue = stdin.readLineSync();
  double incomeValueParse = double.parse(incomeUserValue!);

  if (incomeValueParse <= 1000) {
    limit = incomeValueParse * 0.1;
  } else if (incomeValueParse <= 2500) {
    limit = incomeValueParse * 0.25;
  } else if (incomeValueParse <= 5000) {
    limit = incomeValueParse * 0.4;
  } else if (incomeValueParse <= 10000) {
    limit = incomeValueParse * 0.6;
  } else {
    incomeValueParse > 10000;
    limit = incomeValueParse * 0.75;
  }
  limit = limit.ceilToDouble();
  stdout.writeln('O seu limite é: R\$${limit.toStringAsFixed(2)}.');
  return limit;
}
