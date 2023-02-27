import 'package:bank_dart_application/helper/custom_print.dart';
import 'package:bank_dart_application/inputs/user_inputs/user_address_inputs.dart';
import 'package:bank_dart_application/models/users/user_address_model.dart';
import 'package:bank_dart_application/models/users/user_model.dart';
import 'package:bank_dart_application/validations/cpf_validation.dart';
import 'package:bank_dart_application/validations/email_validation.dart';
import 'package:bank_dart_application/validations/full_name_validation.dart';
import 'package:bank_dart_application/validations/password_validation.dart';
import 'package:bank_dart_application/validations/phone_number_validation.dart';
import '../../validations/monthly_income.dart';

UserModel createUser() {
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
  final monthlyIncomeInput = customPrint(
    inputMessage: 'Por favor, digite sua renda mensal:',
    successMessage: 'Renda mensal cadastrada com sucesso!',
    validator: monthlyIncomeValidation,
  );
  
  UserAddressModel userAddressModel = createUserAdress();
  UserModel user = UserModel(
    name: nameInput!,
    email: emailInput!,
    cpf: cpfInput!,
    password: passwordInput!,
    telephone: telephoneInput!,
    address: userAddressModel,
    monthlyIncome: double.tryParse(monthlyIncomeInput!),
  );
  return user;
}
