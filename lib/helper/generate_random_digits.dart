import 'dart:math';

String randomDigitsGenerator(int digits, {int maxValue = 10}) {
  String randomDigits = '';
  final random = Random();
  for (var i = 0; i < digits; i++) {
    randomDigits = randomDigits + random.nextInt(maxValue).toString();
  }
  return randomDigits;
}
