import 'dart:math';

void main() {
  print('Hello World');
  //Math
  print(45 ~/ 7);
  print(cos(135 * pi / 180));
  print(
    max(5, 10),
  );
  print(
    min(39, 18),
  );
  //Mini Exercise 1
  //Print the value of 1 over the square root of 2 in dart. Confirm that it equals the sine of 45
  print(1 / sqrt(2));

  // Naming data
  int number = 10;
  number = 15;

  double apple = 3.14159;
  print(10.isEven);
  print(3.1345.round());

  dynamic myVariable;
  myVariable = 10;
  myVariable = 'hello';
  myVariable = 134.232;
}
