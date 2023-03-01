String? methodsValidation(String? value) {

  if (value == null || value.trim().isEmpty || value == '0') {
    return 'O campo não pode ser vazio.';
  }
  bool isValidRegex = RegExp(r'^([0-9]{1,3})*([0-9]{2})?$').hasMatch(value);
  if (!isValidRegex) {
    return 'Valor inválido. Por favor, digite somente números.';
  } else {
    return value;
  }
}
