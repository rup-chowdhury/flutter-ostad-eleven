// key value pair
// each value is connected with a key
// both key and value any [Data type - String, int, bool etc]

main(){
  Map<String, String> person = {
    'name' : 'Rup Chowdhury',
    'age' : '25',
    'gender' : 'Male',
    'occupation' : 'Student'
  };

  print(person);

  //access key

  print('What\'s your name ?');
  print(person['name']);
  print('I am ${person['age']} years old');

  // updating a map value
  person['occupation'] = 'Researcher';

  print(person);
}
