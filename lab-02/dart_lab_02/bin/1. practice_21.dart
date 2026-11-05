void main() {
  double cropArea = 75.0;
  double totalArea = 250.0;
  print(cropArea > 100.0);
  print(cropArea < totalArea);
  print(cropArea == totalArea);
  print(cropArea != totalArea);
  print(cropArea >= 75.0);
  print(cropArea <= 74.0);

  double area = 125.0;
  bool isPositive = area > 0;
  bool isAtLeastOneHundred = area >= 100;
  print('Positive: $isPositive');
  print('At least 100 ha: $isAtLeastOneHundred');

  String firstCrop = 'Coffee';
  String secondCrop = 'coffee';
  print(firstCrop == secondCrop);
  print(firstCrop.toLowerCase() == secondCrop.toLowerCase());

  bool meetsBoth = area > 0 && 2025 >= 2000;
  bool requiresReview = area <= 0 || false;
  bool isFinal = !false;
  print(meetsBoth);
  print(requiresReview);
  print(isFinal);

  // Reto
  String municipality = 'Andes';
  double plantedArea = 30.0;
  int observationYear = 2025;
  bool isUsable =
      municipality.trim().isNotEmpty && plantedArea > 0 && observationYear > 0;
  print('Is usable: $isUsable');
}
