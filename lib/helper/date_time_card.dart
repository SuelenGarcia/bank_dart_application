import 'package:path/path.dart';

String? validThruValidation(DateTime value) {
  DateTime currentDate = DateTime.now();

  if (value.isBefore(currentDate)) {
    return 'Data inválida. Deve ser depois da data atual';
  }
  return null;
}

String formatDate(date) {
  final currentDate = DateTime.now();

  final removeTime =
      currentDate.toString().replaceAll(RegExp('[]'), '').split(' ');

  final date = removeTime[0];
  final splittedDate = date.split('-');
  final year = int.parse(splittedDate[0]) + 10;
  final month = splittedDate[1];
  final day = splittedDate[2];

  String formattedDate = '$year-$month-$day';
  return formattedDate;
}

String generateValidThruCard() {
  final currentDate = DateTime.now();
  final formatValidThruDate =
      currentDate.year + currentDate.month + currentDate.day;
  String addTenYears = formatValidThruDate.toString();
  String validThru = '$addTenYears/${currentDate.month}';
  print(validThru);
  return validThru;
}

String validateExpirationCard() {
  DateTime currentDate = DateTime.now();
  String validThru = generateValidThruCard();
  String formattedDate = formatDate(validThru);
  DateTime validthruDateTime = DateTime.parse(formattedDate);

  if (validthruDateTime.isAfter(currentDate)) {
    return 'Maior que a data atual';
  }
  return 'Menor que a data atual';
}
