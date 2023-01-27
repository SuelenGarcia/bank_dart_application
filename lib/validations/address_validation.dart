String? addressValidation(address) {
  if (address == null || address.trim().isEmpty) {
    return 'Esse campo é obrigatório!';
  }
  bool isValidRegex = RegExp(r'^([A-Za-záàâãéèêíóôõúçÁÀÂÃÉÈÍÓÔÕÚÇ](\ ?))+([A-Za-záàâãéèêíóôõúçÁÀÂÃÉÈÍÓÔÕÚÇ]$)?').hasMatch(address);
  if (!isValidRegex) {
    return 'Por favor, insira um endereço válido!';
  }
  return null;
}

String? cepValidation(cep) {
  if (cep == null || cep.trim().isEmpty) {
    return 'Este campo é obrigatório!';
  }
  bool isValidRegex = RegExp(r'^[0-9]{5}(\-)?[0-9]{3}$').hasMatch(cep);
  if (!isValidRegex) {
    return 'Por favor, digite um cep válido!';
  }
  return null;
}

String? complementAddressValidation(String? complement) {
  if (complement == null || complement.trim().isEmpty) {
    return null;
  }
  return null;
}

String? addressNumberValidation(number){
  if (number == null || number.trim().isEmpty) {
    return 'Este campo é obrigatório!';
  }
  bool isValidRegex = RegExp(r'^[0-9]+$').hasMatch(number);
  if (!isValidRegex) {
    return 'Por favor, digite um número de endereço válido!';
  }
  return null;
}
String? addressStreetValidation(street){
  if (street == null || street.trim().isEmpty) {
    return 'Este campo é obrigatório!';
  }
  bool isValidRegex = RegExp(r'^([A-Za-záàâãéèêíóôõúçÁÀÂÃÉÈÍÓÔÕÚÇ0-9](\.? ?))+[A-Za-záàâãéèêíóôõúçÁÀÂÃÉÈÍÓÔÕÚÇ0-9]$').hasMatch(street);
  if (!isValidRegex) {
    return 'Por favor, digite uma rua válida!';
  }
  return null;
}
