import 'dart:io';

String? customPrint({
  required String inputMessage,
  required String successMessage,
  required String? Function(String?) validator,
}){
  stdout.writeln(inputMessage);
  
  String? value = stdin.readLineSync();
  String? validMessage = validator(value);
  
  while (validMessage != null) {
    stdout.writeln(validMessage);
    stdout.writeln(inputMessage);
    value = stdin.readLineSync();
    validMessage = validator(value);
  }
  stdout.writeln(successMessage);
  
  return value;
}