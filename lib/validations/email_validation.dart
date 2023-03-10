String? emailValidation(String? email) {
  if (email == null || email.trim().isEmpty) {
    return 'Esse campo é obrigatório!';
  }
  bool isValidEmail =
      RegExp(r'^[a-zA-Z][a-zA-Z0-9\.\_]+@(outlook|gmail|hotmail|yahoo)(\.com)(.br)?')
          .hasMatch(email);
  if (!isValidEmail) {
    return 'Digite um e-mail válido!';
  }
  return null;
}