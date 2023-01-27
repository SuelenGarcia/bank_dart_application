import 'package:bank_dart_application/validations/monthly_income.dart';
import 'package:test/test.dart';

void main() {

  test('should return invalid message if negative monthly income value', () {
    final response = monthlyIncomeValidation('-0,99');
    expect(response, 'Digite uma renda mensal válida!');
  });

  test('should return invalid message if invalid income value', () {
    final response = monthlyIncomeValidation('a0,99');
    expect(response, 'Digite uma renda mensal válida!');
  });

  test('should return message if invalid value', () {
    final response = monthlyIncomeValidation('0,999');
    expect(response, 'Digite uma renda mensal válida!');
  });

  //válidos
    test('should return message if empty value', () {
    final response = monthlyIncomeValidation('');
    expect(response, null);
  });
  
  test('should return null message', () {
    final response = monthlyIncomeValidation(' ');
    expect(response, null);
  });

  test('should return null when received valid monthly income', () {
    final response = monthlyIncomeValidation('1200,00');
    expect(response, null);
  });

  test('should return null when valid income', () {
    final response = monthlyIncomeValidation('1000,00');
    expect(response, null);
  });
    test('should return null when valid income insert', () {
    final response = monthlyIncomeValidation('1000.00');
    expect(response, null);
  });
}
