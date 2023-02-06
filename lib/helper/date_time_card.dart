import 'package:bank_dart_application/validations/full_name_validation.dart';
import '../models/users/user_model.dart';
import 'package:bank_dart_application/inputs/user_inputs.dart';

void main() {
  dateTimeCard();
}

String? validThruValidation(DateTime value) {
  DateTime currentDate = DateTime.now();

  if (value.isBefore(currentDate)) {
    return 'Data inválida. Deve ser depois da data atual';
  }

  return null;
}

DateTime generateValidThruCard() {
  final currentDate = DateTime.now();

  final validThru =
      DateTime(currentDate.year + 10, currentDate.month, currentDate.day);

  return validThru;
}

String? dateTimeCard() {
  final currentDate = DateTime.now();

  final removeTime =
      currentDate.toString().replaceAll(RegExp('[]'), '').split(' ');

  final date = removeTime[0];
  final splittedDate = date.split('-');

  final year = int.parse(splittedDate[0]) + 10;
  final month = splittedDate[1];
  final day = splittedDate[2];
  String validThru = '$year-$month-$day';

  print('A data de validade do seu cartão é: $validThru');
  DateTime validthruDateTime = DateTime.parse(validThru);

  if (validthruDateTime.isBefore(currentDate)) {
    print('Menor igual a data atual');
  }
  if (validthruDateTime.isAfter(currentDate)) {
    print('Maior a data atual');
  }
  return null;
}
