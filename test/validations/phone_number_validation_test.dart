import 'package:bank_dart_application/validations/phone_number_validation.dart';
import 'package:test/test.dart';

void main() {
  test('should return message expecting required field', () {
    final response = phoneNumberValidation('');
    expect(response, 'Esse campo é obrigatório!');
  });

  test('should return invalid message if empty space!', () {
    final response = phoneNumberValidation(' ');
    expect(response, 'Esse campo é obrigatório!');
  });

  test('should return invalid message if more than 15 digits', () {
    final response = phoneNumberValidation('1234567890123456');
    expect(response, 'Digite um número de telefone válido!');
  });

  test('should return invalid message if less than 11 digits', () {
    final response = phoneNumberValidation('123451234');
    expect(response, 'Digite um número de telefone válido!');
  });

  test('should return message expecting valid number', () {
    final response = phoneNumberValidation('121234123*4');
    expect(response, 'Número de telefone inválido!');
  });
  
// Válido
  test('should return null', () {
    final response = phoneNumberValidation('12123451234');
    expect(response, null);
  });

  test('should return null when valid', () {
    final response = phoneNumberValidation('12 123451234');
    expect(response, null);
  });

  test('should return null if is valid', () {
    final response = phoneNumberValidation('12 12345-1234');
    expect(response, null);
  });

  test('should return null if valid', () {
    final response = phoneNumberValidation('(12) 12345-1234');
    expect(response, null);
  });
}
