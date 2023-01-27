import 'dart:io';
import 'package:bank_dart_application/helper/custom_print.dart';
import 'package:bank_dart_application/models/users/user_address_model.dart';
import 'package:bank_dart_application/models/users/user_model.dart';
import 'package:bank_dart_application/validations/address_validation.dart';
import 'package:bank_dart_application/validations/cpf_validation.dart';
import 'package:bank_dart_application/validations/email_validation.dart';
import 'package:bank_dart_application/validations/full_name_validation.dart';
import 'package:bank_dart_application/validations/password_validation.dart';
import 'package:bank_dart_application/validations/phone_number_validation.dart';

// void main() {
//   userModel();
// }
//sempre uso a main para fazer teste rapido

UserModel userModel() {
  final nameInput = customPrint(
    inputMessage: 'Por favor, digite seu nome completo:',
    successMessage: 'Nome cadastrado com sucesso!',
    validator: fullNameValidation,
  );
  final emailInput = customPrint(
    inputMessage: 'Por favor, digite seu email:',
    successMessage: 'Email cadastrado com sucesso!',
    validator: emailValidation,
  );
  final cpfInput = customPrint(
    inputMessage: 'Por favor, digite seu cpf:',
    successMessage: 'Cpf cadastrado com sucesso!',
    validator: cpfValidation,
  );
  final passwordInput = customPrint(
    inputMessage: 'Por favor, digite sua senha:',
    successMessage: 'Senha cadastrada com sucesso!',
    validator: passwordValidation,
  );
  final telephoneInput = customPrint(
    inputMessage: 'Por favor, digite o número do seu telefone:',
    successMessage: 'Número de telefone cadastrado com sucesso!',
    validator: phoneNumberValidation,
  );
  // final addressInput = customPrint(
  //   inputMessage: 'Por favor, digite seu endereço:',
  //   successMessage: 'Endereço cadastrado com sucesso!',
  //   validator: addressValidation,
  // );

  UserModel user = UserModel(
    name: nameInput!,
    email: emailInput!,
    cpf: cpfInput!,
    password: passwordInput!,
    telephone: telephoneInput!,
    // address: ,
  );
  return user;
}