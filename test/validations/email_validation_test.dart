import 'package:bank_dart_application/validations/email_validation.dart';
import 'package:test/test.dart';

void main() {
  test('should return required field message', () {
    final response = emailValidation(' ');
    expect(response, 'Esse campo é obrigatório!');
  });
  test('should return invalid message if is empty space', () {
    final response = emailValidation('');
    expect(response, 'Esse campo é obrigatório!');
  });
  test('should return invalid message if invalid email format', () {
    final response = emailValidation('whatever@gov.uk');
    expect(response, 'Digite um e-mail válido!');
  });
  test('should return invalid message if email start with number', () {
    final response = emailValidation('1whatever@outlook.com');
    expect(response, 'Digite um e-mail válido!');
  });
  test('should return invalid message if invalid characters', () {
    final response = emailValidation(r'whatever$#@!@gmail.com');
    expect(response, 'Digite um e-mail válido!');
  });
  test('should return invalid message if invalid domain', () {
    final response = emailValidation('whatever@outlook2com1br');
    expect(response, 'Digite um e-mail válido!');
  });
  //válidos
  test('should return null if valid email', () {
    final response = emailValidation('whatever@outlook.com.br');
    expect(response, null);
  });
  test('should return null if valid e-mail', () {
    final response = emailValidation('what_ever@gmail.com');
    expect(response, null);
  });
  test('should return null if received valid email', () {
    final response = emailValidation('w23hatever@hotmail.com.br');
    expect(response, null);
  });
  test('should return null if received valid email format', () {
    final response = emailValidation('what.ever@yahoo.com');
    expect(response, null);
  });
}
