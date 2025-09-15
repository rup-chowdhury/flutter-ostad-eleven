import 'dart:io';

main() {
  String? name;
  print(name);
  print('Enter your name');
  name = stdin.readLineSync();

  print('Enter your age');
  int? age = int.parse(stdin.readLineSync()!);
  print('My name is : $name');
  print('My age is : $age');
}
