import 'package:bank_dart_application/validations/cpf_validation.dart';
import 'package:test/test.dart';

void main() {
  test('should return message required field', () {
    final response = cpfValidationRegex('');
    expect(response, 'Esse campo é obrigatório!');
  });
  test('should return invalid message if is empty space', () {
    final response = cpfValidationRegex(' ');
    expect(response, 'Esse campo é obrigatório!');
  });
  test('should return invalid message', () {
    final response = cpfValidation('58767');
    expect(response, 'Formato de cpf inválido!');
  });
  test('should return invalid message if invalid caracters', () {
    final response = cpfValidationRegex('024518658*9');
    expect(response, 'Digite um cpf válido!');
  });
  // test('should return invalid message when invalid cpf', () {
  //   final response = isValidCpf('22222222222');
  //   expect(response,
  //       'Dígitos verificadores inválidos. Por favor, insira um cpf válido!');
  // });

  test('should return invalid message if uncorrect verify digit', () {
    final response = cpfValidation('72148276008');
    expect(response,
        'Dígitos verificadores inválidos. Por favor, insira um cpf válido!');
  });
  test('should return invalid message if unverify digits', () {
    final response = cpfValidation('35876806009');
    expect(response,
        'Dígitos verificadores inválidos. Por favor, insira um cpf válido!');
  });
  test('should return invalid message if unverify digit', () {
    final response = cpfValidation('59595693034');
    expect(response,
        'Dígitos verificadores inválidos. Por favor, insira um cpf válido!');
  });
  //Válidos
  test('should return null when valid cpf', () {
    final response = cpfValidation('04942723094');
    expect(response, null);
  });
  test('should return null if valid cpf', () {
    final response = cpfValidation('35876006009');
    expect(response, null);
  });
  test('should return null when cpf is valid', () {
    final response = cpfValidation('35876006009');
    expect(response, null);
  });
}
