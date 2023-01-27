String? phoneNumberValidation(String? phoneNumber) {
  if (phoneNumber == null || phoneNumber.trim().isEmpty) {
    return 'Esse campo é obrigatório!';
  }
  
  if (phoneNumber.length < 11 || phoneNumber.length > 15) {

    return 'Digite um número de telefone válido com ddd!';
  }
  bool isValidPhoneNumber =
      RegExp(r'\(?[0-9]{2}\)? ?[0-9]{5}-? ?[0-9]{4}').hasMatch(phoneNumber);
  if (!isValidPhoneNumber) {
    return 'Número de telefone inválido!';
  }
  return null;
}
