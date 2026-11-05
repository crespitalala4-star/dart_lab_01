import 'dart:io';

void main() {
  for (int i = 1; i <= 3; i++) {
    print('Observation $i');
  }

  int processedCrops = 0;
  double totalArea = 0.0;
  for (int i = 1; i <= 3; i++) {
    processedCrops++;
    totalArea += 20.0;
  }
  print('Crops: $processedCrops');
  print('Total area: $totalArea ha');

  double total2 = 0.0;
  for (int i = 1; i <= 3; i++) {
    stdout.write('Area for crop $i (ha): ');
    double area = double.tryParse(stdin.readLineSync() ?? '') ?? 0;
    total2 += area;
  }
  print('Total area: ${total2.toStringAsFixed(2)} ha');

  double largestArea = 0.0;
  for (int i = 1; i <= 4; i++) {
    double current = i * 12.5;
    if (current > largestArea) largestArea = current;
    print('Area $i: $current ha');
  }
  print('Largest area: $largestArea ha');

  for (int i = 1; i <= 5; i++) {
    if (i == 2) continue;
    if (i == 5) break;
    print(i);
  }
}
