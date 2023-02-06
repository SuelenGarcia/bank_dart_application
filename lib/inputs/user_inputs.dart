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
import '../validations/monthly_income.dart';

void main() {
  // userModel();
}
//usei uma main aqui só para fazer uns testes rapidos

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
  final addressInput = customPrint(
    inputMessage: 'Por favor, digite sua rua:',
    successMessage: 'Rua cadastrada com sucesso!',
    validator: addressStreetValidation,
  );
  final addressNumberInput = customPrint(
    inputMessage: 'Por favor, digite o número do seu endereço:',
    successMessage: 'Número de endereço cadastrado com sucesso!',
    validator: addressNumberValidation,
  );
  final addressNeighborhoodInput = customPrint(
    inputMessage: 'Por favor, digite seu bairro:',
    successMessage: 'Bairro cadastrado com sucesso!',
    validator: addressValidation,
  );
  final addressCityInput = customPrint(
    inputMessage: 'Por favor, digite sua cidade:',
    successMessage: 'Cidade cadastrada com sucesso!',
    validator: addressValidation,
  );
  final addressStateInput = customPrint(
    inputMessage: 'Por favor, digite seu estado:',
    successMessage: 'Estado cadastrado com sucesso!',
    validator: addressValidation,
  );
  final addressCepInput = customPrint(
    inputMessage: 'Por favor, digite seu cep:',
    successMessage: 'Cep cadastrado com sucesso!',
    validator: cepValidation,
  );
  final addressComplementInput = customPrint(
    inputMessage: 'Por favor, digite seu complemento:',
    successMessage: 'Complemento cadastrado com sucesso!',
    validator: complementAddressValidation,
  );
  final monthlyIncomeInput = customPrint(
    inputMessage: 'Por favor, digite sua renda mensal:',
    successMessage: 'Renda mensal cadastrada com sucesso!',
    validator: monthlyIncomeValidation,
  );

  UserModel user = UserModel(
    name: nameInput!,
    email: emailInput!,
    cpf: cpfInput!,
    password: passwordInput!,
    telephone: telephoneInput!,
    address: UserAddressModel(
        address: addressInput!,
        addressNumber: addressNumberInput!,
        neighborhood: addressNeighborhoodInput!,
        city: addressCityInput!,
        state: addressStateInput!,
        cep: addressCepInput!,
        complementAddress: addressComplementInput
        ),
    monthlyIncome: monthlyIncomeInput,
  );
  return user;
}
