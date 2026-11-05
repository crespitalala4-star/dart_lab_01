import 'dart:io';

String? readRequiredText(String prompt) {
  while (true) {
    stdout.write(prompt);
    String? raw = stdin.readLineSync();
    if (raw == null) {
      print('Input ended.');
      return null;
    }
    if (raw.trim().isNotEmpty) return raw.trim();
    print('A non-empty value is required.');
  }
}

int? readIntInRange(String prompt, int min, int max) {
  while (true) {
    stdout.write(prompt);
    String? raw = stdin.readLineSync();
    if (raw == null) {
      print('Input ended.');
      return null;
    }
    int? v = int.tryParse(raw.trim());
    if (v != null && v >= min && v <= max) return v;
    print('Enter an integer from $min to $max.');
  }
}

double? readPositiveArea(String prompt) {
  while (true) {
    stdout.write(prompt);
    String? raw = stdin.readLineSync();
    if (raw == null) {
      print('Input ended.');
      return null;
    }
    double? v = double.tryParse(raw.trim());
    if (v != null && v.isFinite && v > 0) return v;
    print('Enter a positive finite area.');
  }
}

void main() {
  int? valid = int.tryParse('12');
  int? invalid = int.tryParse('abc');
  print(valid);
  print(invalid);

  String? muni = readRequiredText('Municipality: ');
  if (muni == null) return;
  int? count = readIntInRange('Crop count (1-5): ', 1, 5);
  if (count == null) return;
  double? area = readPositiveArea('Planted area (ha): ');
  if (area == null) return;
  print(
    'Municipality: $muni, Count: $count, Area: ${area.toStringAsFixed(2)} ha',
  );
}
