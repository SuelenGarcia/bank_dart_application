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
  int addTenYears = currentDate.year + 10;
  String validThru = '$addTenYears/${currentDate.month}';

  return validThru;
}

String validateExpirationCard() {
  DateTime currentDate = DateTime.now();
  String validThru = generateValidThruCard();
  String formattedDate = formatDate(validThru);
  DateTime validThruDateTime = DateTime.parse(formattedDate);

  if (validThruDateTime.isAfter(currentDate)) {
    return 'Maior que a data atual';
  }
  return 'Menor que a data atual';
}
