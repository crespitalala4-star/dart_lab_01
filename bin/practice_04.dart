import 'dart:io';

void main() {
  stdout.write('Enter municipality: ');
  String municipality = (stdin.readLineSync() ?? '').trim();

  stdout.write('Enter crop: ');
  String crop = (stdin.readLineSync() ?? '').trim();

  stdout.write('Enter planted area (ha): ');
  double plantedArea = double.parse(stdin.readLineSync() ?? '');

  print('Municipality: $municipality');
  print('Crop: $crop');
  print('Planted area: $plantedArea ha');
}
