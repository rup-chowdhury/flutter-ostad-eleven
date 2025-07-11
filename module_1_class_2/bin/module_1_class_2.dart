main() {
  // print('Hello There \nGeneral Greivous');

  String name = 'General Greivous';
  int age = 86;
  double height = 6.3;
  bool isAlive = true;

  var test = 'test text';   //can be declared with any type of data. But can not be changed the type once declared
  dynamic test2 = 'second test text'; //can be declared with any type of data. Also, data type of variable can be changed even after declaration
  test2 = 50;
  test2 = false;
  
  print('Name: $name \nAge: $age \nHeight: $height \nIs he still alive? - $isAlive');

  print('var type variable: $test');
  print('dynamic type variable: $test2');
}