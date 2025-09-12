main () {

  print('Hello There !');

  print(twice(3));

  print(thrice(4));

  print(max(16, 9));
  
  print(min(6, 13));
  
  twoFer('Alice');

  discountedPrice(100);

  vatAddedPrice(100);
  
}

twice(x) => x * 2;

thrice(y){
  return y*3;
}

min(a,b) => (a<b)? a:b;

max(a, b) => (a>b)? a : b;

twoFer(String name){
  print('One for $name, one for me');
}

discountedPrice(double price){
  print('Total: $price \n Discounted Price: ${price * 0.2}');
}

vatAddedPrice(double price){
  print('Total: $price \n VAT Added Price: ${price + price * 0.2}');
}