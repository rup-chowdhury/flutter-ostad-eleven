main() {
  // print('Hello There \nGeneral Greivous');

  String name = 'General Greivous';
  int age = 86;
  double height = 6.3;
  bool isAlive = true;

  var test = 'test text';   //can be declared with any type of data. But can not be changed the type once declared. Changes during compile time.
  dynamic test2 = 'second test text'; //can be declared with any type of data. Also, data type of variable can be changed even after declaration. Changes during runtime.
  test2 = 50;
  test2 = false;
  
  print('Name: $name \nAge: $age \nHeight: $height \nIs he still alive? - $isAlive');

  print('var type variable: $test');
  print('dynamic type variable: $test2');

  //compile time. It can never be changed once declared.
  const double PI = 3.1416;

  //runtime. It can change during runtime
  final DateTime currentDateTime = DateTime.now();

  print(PI);
  print(currentDateTime);

  //check data type of variable
  print(test.runtimeType);
  print(test is double); //checking with condition


  //+, -, *, /
  int a = 20;
  int b = 30;
  print(a+b);
  print(a-b);
  print(a*b);
  print(a/b);

  //post increment
  print(a++);
  print(a);

  //pre increment
  print(++a);
  print(a);

  //post decrement
  print(a--);
  print(a);

  //pre decrement
  print(--a);
  print(a);
}