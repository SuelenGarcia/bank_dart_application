import 'package:bank_dart_application/models/users/user_address_model.dart';

class UserModel {
  String name;
  String email;
  String cpf;
  String password;
  String telephone;
  double? monthlyIncome;
  UserAddressModel address;

  UserModel({
    required this.name,
    required this.email,
    required this.cpf,
    required this.password,
    required this.telephone,
    this.monthlyIncome,
    required this.address,
  });

  @override
  String toString() {
    return 'UserModel(name: $name, email: $email, cpf: $cpf, password: $password, telephone: $telephone, monthlyIncome: $monthlyIncome, address: $address)';
  }
}
