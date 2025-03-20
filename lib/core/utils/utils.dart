/// check if the string contains only numbers
bool isNumeric(String str) {
  final numeric = RegExp(r'^-?[0-9]+$');
  return numeric.hasMatch(str);
}

bool isNumericDouble(String? s) {
  if (s == null) {
    return false;
  }
  return double.tryParse(s) != null;
}
