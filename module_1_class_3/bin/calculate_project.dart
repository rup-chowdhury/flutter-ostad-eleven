import 'dart:io';

main(){
  print('Enter 1st Number: ');
  double? number1 = double.parse(stdin.readLineSync()!);

  print('Enter 2st Number: ');
  double? number2 = double.parse(stdin.readLineSync()!);

  print('Sum : ${number1 + number2}');
  print('Sub : ${number1 - number2}');
  print('Multiplication : ${number1 * number2}');
  print('Division : ${number1 / number2}');
  print('Remainder : ${number1 % number2}');
}