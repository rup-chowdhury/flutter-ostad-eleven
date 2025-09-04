main () {
  print('Hello There!');

  print(twice(3));

  print(thrice(4));


  print(max(16, 9));
}

twice(x) => x*2;

thrice(y){
  return y*3;
}



max(a, b) => (a>b)? a : b;