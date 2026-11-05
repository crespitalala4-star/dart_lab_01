void main() {
  String department = 'Antioquia';
  String municipality = 'Andes';
  String crop = 'Coffee';
  int observationYear = 2025;
  double plantedArea = 125.5;
  bool isPreliminary = true;
  const areaUnit = 'ha';

  print('Department: $department');
  print('Municipality: $municipality');
  print('Crop: $crop');
  print('Year: $observationYear');
  print('Area: $plantedArea $areaUnit');
  print('Preliminary: $isPreliminary');

  // Correccion
  plantedArea = 130.0;
  print('Corrected area: $plantedArea $areaUnit');
}
