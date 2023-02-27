import 'dart:io';
import 'package:bank_dart_application/models/users/user_model.dart';

void requirePassword({required UserModel userModel}) {
  String password = userModel.password;
  String? inputPassword;
  do {
    stdout.writeln('Para concluir a transação, digite a sua senha:');
    inputPassword = stdin.readLineSync();
    if (password == inputPassword) {
      stdout.writeln('Transação aprovada com sucesso!');
    } else {
      stdout.writeln('Senha inválida. Tente novamente.');
    }
  } while (inputPassword != password);
}
