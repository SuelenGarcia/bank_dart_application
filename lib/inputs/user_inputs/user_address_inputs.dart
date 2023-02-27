import 'package:bank_dart_application/models/users/user_address_model.dart';
import '../../helper/custom_print.dart';
import '../../validations/address_validation.dart';

UserAddressModel createUserAdress() {
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
  UserAddressModel userAddress = UserAddressModel(
    address: addressInput!,
    addressNumber: addressNumberInput!,
    neighborhood: addressNeighborhoodInput!,
    city: addressCityInput!,
    state: addressStateInput!,
    cep: addressCepInput!,
    complementAddress: addressComplementInput,
  );
  return userAddress;
}
