import 'package:bank_dart_application/validations/password_validation.dart';
import 'package:test/test.dart';

void main() {
   test('should return message expecting required field', () {
    final response = passwordValidation('');
    expect(response, 'Esse campo é obrigatório!');
  });
    test('should return invalid message if empty space!', () {
    final response = passwordValidation(' ');
    expect(response, 'Esse campo é obrigatório!');
  });
  test('should return invalid message if more than 8 digits', () {
    final response = 
    passwordValidation('1234567890');
    expect(response, 'A senha precisa ter 8 caracteres!');
  });
  test('should return message expecting less than 8 digits', () {
    final response = 
      passwordValidation('1234567891234567');
    expect(response, 'A senha precisa ter 8 caracteres!');
  });
  test('should return invalid message if invalid password', () {
    final response = 
      passwordValidation('123*45');
    expect(response, 'A senha precisa ter 8 caracteres!');
  });

  // Válido
  test('should return null when valid password', () {
    final response = 
      passwordValidation('58965741');
   expect(response, null);
  });
}