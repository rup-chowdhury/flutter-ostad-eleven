main () {
  List<int> numbers = [10, 20, 30, 40];
  print(numbers);
  numbers.add(60);
  print(numbers);

  numbers.addAll([80, 100, 120]);
  print(numbers);

  numbers.remove(100);
  print(numbers);
<<<<<<< HEAD
=======

  numbers.removeAt(2);
  print(numbers);

  print(numbers.contains(60));

  print(numbers.length);

  print(numbers.reversed);
>>>>>>> e5475df0d197bdd66cad225f82f88920bd64cb8c
}
