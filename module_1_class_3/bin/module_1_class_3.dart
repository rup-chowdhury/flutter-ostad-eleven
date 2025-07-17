main () {
  List<int> numbers = [10, 20, 30, 40];
  print(numbers);
  numbers.add(60);
  print(numbers);

  numbers.addAll([80, 100, 120]);
  print(numbers);

  numbers.remove(100);
  print(numbers);

  numbers.removeAt(2);
  print(numbers);

  print(numbers.contains(60));

  print(numbers.length);
}
