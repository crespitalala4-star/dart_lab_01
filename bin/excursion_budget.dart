import 'dart:io';

double calculateLodgingTotal(double lodgingPerNight, int nights) {
  return lodgingPerNight * nights;
}

double calculateFoodTotal(double foodPerPersonPerDay, int travelers, int days) {
  return foodPerPersonPerDay * travelers * days;
}

double calculateTotalBudget(
  double transport,
  double lodgingTotal,
  double foodTotal,
) {
  return transport + lodgingTotal + foodTotal;
}

double calculateCostPerPerson(double total, int travelers) {
  return total / travelers;
}

double calculateTransportShare(double transport, double total) {
  return transport / total * 100;
}

void main() {
  stdout.write('Destination: ');
  String destination = (stdin.readLineSync() ?? '').trim();
  stdout.write('Travelers: ');
  int travelers = int.parse(stdin.readLineSync() ?? '');
  stdout.write('Days: ');
  int days = int.parse(stdin.readLineSync() ?? '');
  stdout.write('Nights: ');
  int nights = int.parse(stdin.readLineSync() ?? '');
  stdout.write('Total transport cost: ');
  double transport = double.parse(stdin.readLineSync() ?? '');
  stdout.write('Lodging cost per night (group): ');
  double lodgingPerNight = double.parse(stdin.readLineSync() ?? '');
  stdout.write('Food cost per day per person: ');
  double foodPerPerson = double.parse(stdin.readLineSync() ?? '');

  double lodgingTotal = calculateLodgingTotal(lodgingPerNight, nights);
  double foodTotal = calculateFoodTotal(foodPerPerson, travelers, days);
  double total = calculateTotalBudget(transport, lodgingTotal, foodTotal);
  double perPerson = calculateCostPerPerson(total, travelers);
  double transportShare = calculateTransportShare(transport, total);

  print('========================================');
  print('      EXCURSION BUDGET');
  print('========================================');
  print('Destination: $destination');
  print('Travelers: $travelers | Days: $days | Nights: $nights');
  print('Transport: ${transport.toStringAsFixed(2)}');
  print('Lodging total: ${lodgingTotal.toStringAsFixed(2)}');
  print('Food total: ${foodTotal.toStringAsFixed(2)}');
  print('Total budget: ${total.toStringAsFixed(2)}');
  print('Cost per person: ${perPerson.toStringAsFixed(2)}');
  print('Transport share: ${transportShare.toStringAsFixed(2)}%');
}
