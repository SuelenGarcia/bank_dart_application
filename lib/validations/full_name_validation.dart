String? fullNameValidation(String? fullName) {
  if (fullName == null || fullName.trim().isEmpty) {
    return 'Esse campo é obrigatório!';
  }
  bool isValidFullName = RegExp(
          r'[A-Za-záàâãéèêíóôõúçÁÀÂÃÉÈÍÓÔÕÚÇ]{3,}(( )?[A-Za-záàâãéèêíóôõúçÁÀÂÃÉÈÍÓÔÕÚÇ]{2,})?(( )[A-Za-záàâãéèêíóôõúçÁÀÂÃÉÈÍÓÔÕÚÇ]{3,})$')
      .hasMatch(fullName);
  if (!isValidFullName) {
    return 'Digite um nome completo válido!';
  }
  return null;
}
