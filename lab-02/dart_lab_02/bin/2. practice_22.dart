import 'dart:io';

String classifyShare(double share) {
  if (!share.isFinite || share < 0 || share > 100) return 'Invalid share';
  if (share >= 75) return 'Very high share.';
  if (share >= 50) return 'High share.';
  if (share >= 25) return 'Moderate share.';
  return 'Low share.';
}

void main() {
  double area = 0.0;
  if (area > 0) print('Area is positive.');

  double area2 = -2.0;
  if (area2 >= 0) {
    print('Area is non-negative.');
  } else {
    print('Area cannot be negative.');
  }

  stdout.write('Municipality: ');
  String municipality = (stdin.readLineSync() ?? '').trim();
  if (municipality.isEmpty) {
    print('Municipality is required.');
  } else {
    print('Municipality: $municipality');
  }

  for (double s in [-1, 0, 25, 50, 75, 100, 101]) {
    print('$s -> ${classifyShare(s)}');
  }
}
