import 'dart:io';

void main() {
  stdout.write('Department: ');
  String department = (stdin.readLineSync() ?? '').trim();
  stdout.write('Municipality: ');
  String municipality = (stdin.readLineSync() ?? '').trim();
  stdout.write('Crop: ');
  String crop = (stdin.readLineSync() ?? '').trim();
  stdout.write('Observation year: ');
  int year = int.parse(stdin.readLineSync() ?? '');
  stdout.write('Planted area (ha): ');
  double area = double.parse(stdin.readLineSync() ?? '');

  print('--- Summary ---');
  print('Department: $department');
  print('Municipality: $municipality');
  print('Crop: $crop');
  print('Year: $year');
  print('Area: ${area.toStringAsFixed(2)} ha');
}
