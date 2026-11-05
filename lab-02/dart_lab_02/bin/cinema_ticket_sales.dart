import 'dart:io';

int? readIntInRange(String prompt, int min, int max) {
  while (true) {
    stdout.write(prompt);
    String? input = stdin.readLineSync();
    if (input == null) return null;
    int? v = int.tryParse(input.trim());
    if (v != null && v >= min && v <= max) return v;
    print('Enter an integer from $min to $max.');
  }
}

void main() {
  const int capacity = 40;
  const int generalPrice = 18000;
  const int studentPrice = 12000;

  int soldGeneral = 0;
  int soldStudent = 0;
  int totalRevenue = 0;
  int soldTotal = 0;

  while (true) {
    print('--- CINEMA ---');
    print('1. Sell tickets');
    print('2. View summary');
    print('0. Exit');
    int? option = readIntInRange('Option: ', 0, 2);
    if (option == null || option == 0) {
      print('Goodbye!');
      return;
    }
    switch (option) {
      case 1:
        int available = capacity - soldTotal;
        if (available <= 0) {
          print('Sold out. No seats available.');
          break;
        }
        print('1. General - 18000');
        print('2. Student - 12000');
        int? type = readIntInRange('Ticket type: ', 1, 2);
        if (type == null) return;
        int? qty = readIntInRange('How many? (1-$available): ', 1, available);
        if (qty == null) return;

        if (type == 1) {
          soldGeneral += qty;
          totalRevenue += qty * generalPrice;
        } else {
          soldStudent += qty;
          totalRevenue += qty * studentPrice;
        }
        soldTotal += qty;
        print('Sale accepted.');
      case 2:
        print('Capacity: $capacity');
        print('Sold: $soldTotal');
        print('Available: ${capacity - soldTotal}');
        print('General sold: $soldGeneral');
        print('Student sold: $soldStudent');
        print('Revenue: $totalRevenue');
      default:
        print('Unknown option.');
    }
  }
}
