String? cpfValidationRegex(String? cpf) {
  if (cpf == null || cpf.trim().isEmpty) {
    return 'Esse campo é obrigatório!';
  }
  bool isValidRegex =
      RegExp(r'^[0-9]{3}(\.)?[0-9]{3}(\.)?[0-9]{3}(\-)?[0-9]{2}$')
          .hasMatch(cpf);
  if (!isValidRegex) {
    return 'Digite um cpf válido!';
  }
  return null;
}

bool cpfTenthDigitValidator(String cpf) {
  int sum = 0;
  int multiplier = cpf.length - 1;
  int cpfLength = cpf.length - 2;
  int currentCpfDigit;
  int sumRest;
  int multiplierResult;

  for (var cpfIndex = 0; cpfIndex < cpfLength; cpfIndex++) {
    currentCpfDigit = int.parse(cpf[cpfIndex]);
    multiplierResult = currentCpfDigit * multiplier;
    sum += multiplierResult;
    multiplier--;
  }
  sumRest = (sum * 10) % 11;
  if (sumRest == 10) {
    sumRest = 0;
  }
  final validadorDigit = int.parse(cpf[9]);
  if (sumRest == validadorDigit) {
    return true;
  }
  return false;
}

bool cpfEleventhDigitValidator(String cpf) {
  int sum = 0;
  int multiplier = cpf.length;
  int cpfLength = cpf.length - 1;
  int currentCpfDigit;
  int sumRest;
  for (var cpfIndex = 0; cpfIndex < cpfLength; cpfIndex++) {
    currentCpfDigit = int.parse(cpf[cpfIndex]);
    sum += currentCpfDigit * multiplier;
    multiplier--;
  }
  sumRest = (sum * 10) % 11;
  if (sumRest == 10) {
    sumRest = 0;
  }
  final validatorDigit = int.parse(cpf[10]);
  if (sumRest == validatorDigit) {
    return true;
  }
  return false;
}

String? cpfValidation(String? cpf) {
  final cpfValidationFormat = cpfValidationRegex(cpf!);
  if (cpfValidationFormat != null) {
    return cpfValidationRegex(cpf);
  }
  if (cpfTenthDigitValidator(cpf) != true) {
    return 'Dígitos verificadores inválidos. Por favor, insira um cpf válido!';
  }
  if (cpfEleventhDigitValidator(cpf) != true) {
    return 'Dígitos verificadores inválidos. Por favor, insira um cpf válido!';
  }
  return null;
}