import 'dart:io';

void main() {
  interactiveMenu();
}

String? interactiveMenu() {
  stdout.writeln('Por favor, digite o número da opção desejada:');
  stdout.writeln('(1) - Sacar');
  stdout.writeln('(2) - Empréstimo');
  stdout.writeln('(3) - Depósito');
  stdout.writeln('(4) - Rendimento');
  stdout.writeln('(5) - Pagar com débito');
  stdout.writeln('(6) - Pagar com crédito');
  stdout.writeln('(7) - Sair');

  final input = stdin.readLineSync();

  switch (input) {
    case ('1'):
      print('Sacar');
      break;
    case ('2'):
      print('Empréstimo');
      break;
    case ('3'):
      print('Depósito');
      break;
    case ('4'):
      print('Rendimento');
      break;
    case ('5'):
      print('Pagar com débito');
      break;
    case ('6'):
      print('Pagar com crédito');
      break;
    case ('7'):
      print('Sair');
      break;
    default:
      print(
          'Opção inválida, tente novamente.');
      interactiveMenu();
  }
  return null;
}
