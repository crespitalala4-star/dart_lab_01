double calculateTotalArea(double first, double second, double third) {
  return first + second + third;
}

double calculateAverageArea(double total, int count) {
  return total / count;
}

void showObservation(String municipality, String crop, double area) {
  print(
    'Municipality: $municipality | Crop: $crop | Area: ${area.toStringAsFixed(2)} ha',
  );
}

void main() {
  double total = calculateTotalArea(125.5, 74.5, 50.0);
  double average = calculateAverageArea(total, 3);
  print('Total: ${total.toStringAsFixed(2)}');
  print('Average: ${average.toStringAsFixed(2)}');
  showObservation('Andes', 'Coffee', 125.5);
  showObservation('Andes', 'Plantain', 74.5);
}
