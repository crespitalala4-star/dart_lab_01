import 'dart:io';

String getOptionName(String option) {
  switch (option) {
    case '1':
      return 'Register';
    case '2':
      return 'Summary';
    case '0':
      return 'Exit';
    default:
      return 'Unknown';
  }
}

String sectionLabel(String cmd) {
  switch (cmd) {
    case 'a':
      return 'Section A';
    case 'b':
      return 'Section B';
    case 'c':
      return 'Section C';
    case 'q':
      return 'Quit';
    default:
      return 'Unknown';
  }
}

void main() {
  int option = 2;
  switch (option) {
    case 1:
      print('Register observation.');
    case 2:
      print('View summary.');
    case 0:
      print('Exit.');
    default:
      print('Unknown option.');
  }

  print(getOptionName('1'));
  print(getOptionName('2'));
  print(getOptionName('8'));
  print(sectionLabel('a'));
  print(sectionLabel('q'));
  print(sectionLabel('z'));

  print('1. Register / 2. Summary / 0. Exit');
  stdout.write('Option: ');
  String opt = (stdin.readLineSync() ?? '').trim();
  switch (opt) {
    case '1':
      print('Register selected.');
    case '2':
      print('Summary selected.');
    case '0':
      print('Exit selected.');
    default:
      print('Invalid option.');
  }
}
