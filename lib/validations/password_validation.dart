String? passwordValidation(String? password) {
  
  if(password == null || password.trim().isEmpty){
  return 'Esse campo é obrigatório!';
  }
  if(password.length != 8){
  return 'A senha precisa ter 8 caracteres somente númericos!';
  }
  bool isValidPassword = RegExp(r'[0-9]{8}').hasMatch(password);
  if(!isValidPassword){
  return 'Senha inválida!';
  }
  return null;
  }