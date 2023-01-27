import 'package:bank_dart_application/validations/full_name_validation.dart';
import 'package:test/test.dart';

void main() {
  test('should return message expecting required field', () {
    final response = fullNameValidation('');
    expect(response, 'Esse campo é obrigatório!');
  });
  test('should return message if is empty space', () {
    final response = fullNameValidation(' ');
    expect(response, 'Esse campo é obrigatório!');
  });
  test('should return invalid message if name has numbers', () {
    final response = fullNameValidation('Ana Whatever 2');
    expect(response, 'Digite um nome completo válido!');
  });
  test('should return invalid message if is a invalid name', () {
    final response = fullNameValidation('An');
    expect(response, 'Digite um nome completo válido!');
  });
  test('should return invalid message if name is invalid', () {
    final response = fullNameValidation('Ana');
    expect(response, 'Digite um nome completo válido!');
  });

  //válidos
  test('should return null if is a valid name', () {
    final response = fullNameValidation('Ana Whatever');
    expect(response, null);
  });
  test('should return null if valid name', () {
    final response = fullNameValidation('Ana Whatever da Silva');
    expect(response, null);
  });
  test('should return null if correct name', () {
    final response = fullNameValidation('Ana de Whatever');
    expect(response, null);
  });

}
