import 'dart:io';

double calculateTotalArea(
  double firstArea,
  double secondArea,
  double thirdArea,
) {
  return firstArea + secondArea + thirdArea;
}

double calculateAverageArea(double totalArea, int cropCount) {
  return totalArea / cropCount;
}

double calculateAreaShare(double cropArea, double totalArea) {
  return cropArea / totalArea * 100;
}

void showReportHeader(String department, String municipality, int year) {
  print('========================================');
  print('      AGRICULTURAL OBSERVATION');
  print('========================================');
  print('Department: $department');
  print('Municipality: $municipality');
  print('Year: $year');
  print('');
}

void main() {
  stdout.write('Department: ');
  String department = (stdin.readLineSync() ?? '').trim();
  stdout.write('Municipality: ');
  String municipality = (stdin.readLineSync() ?? '').trim();
  stdout.write('Observation year: ');
  int observationYear = int.parse(stdin.readLineSync() ?? '');

  stdout.write('First crop: ');
  String firstCrop = (stdin.readLineSync() ?? '').trim();
  stdout.write('First area (ha): ');
  double firstArea = double.parse(stdin.readLineSync() ?? '');

  stdout.write('Second crop: ');
  String secondCrop = (stdin.readLineSync() ?? '').trim();
  stdout.write('Second area (ha): ');
  double secondArea = double.parse(stdin.readLineSync() ?? '');

  stdout.write('Third crop: ');
  String thirdCrop = (stdin.readLineSync() ?? '').trim();
  stdout.write('Third area (ha): ');
  double thirdArea = double.parse(stdin.readLineSync() ?? '');

  double totalArea = calculateTotalArea(firstArea, secondArea, thirdArea);
  double averageArea = calculateAverageArea(totalArea, 3);
  double firstShare = calculateAreaShare(firstArea, totalArea);
  double secondShare = calculateAreaShare(secondArea, totalArea);
  double thirdShare = calculateAreaShare(thirdArea, totalArea);

  showReportHeader(department, municipality, observationYear);
  print(
    '$firstCrop: ${firstArea.toStringAsFixed(2)} ha | Share: ${firstShare.toStringAsFixed(2)}%',
  );
  print(
    '$secondCrop: ${secondArea.toStringAsFixed(2)} ha | Share: ${secondShare.toStringAsFixed(2)}%',
  );
  print(
    '$thirdCrop: ${thirdArea.toStringAsFixed(2)} ha | Share: ${thirdShare.toStringAsFixed(2)}%',
  );
  print('');
  print('Total planted area: ${totalArea.toStringAsFixed(2)} ha');
  print('Average area per crop: ${averageArea.toStringAsFixed(2)} ha');
  print('');
  print('Data: fictional learning example.');
}
