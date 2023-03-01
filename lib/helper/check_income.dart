import 'dart:io';
import 'package:bank_dart_application/models/users/user_model.dart';

void checkIncome({required UserModel userModel, required double? income,}) {
  stdout.writeln(
      'Para prosseguir neste menu, precisaremos checar a sua renda mensal. Aguarde..');
  String incomeString = income.toString();
  if (incomeString.trim().isEmpty || income == null || income == 0) {
    stdout
        .writeln('Não é possível prosseguir pois você não declarou uma renda.');
    return;
  } else {
    stdout.writeln('Está tudo certo com a sua renda mensal!');
  }
}
