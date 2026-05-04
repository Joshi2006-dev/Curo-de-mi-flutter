void main(){
  print(greetEveryone());
  print(addTwoNumbers(10,20));
  print(greetPerson(name: 'Josue'));
}


String greetEveryone() => 'Hola a todos';


int addTwoNumbers(int a, int b) => a + b;

int addTwoNumbersOptional(int a, [int? b]){
  b ??= 0;
  return a + b;
}

String greetPerson({ required String name, String message = 'Hola, '}){
  return '$message $name';
}
