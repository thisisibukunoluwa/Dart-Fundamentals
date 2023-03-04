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

  // value cannot be reassigned
  // const myConstant = 10;
  // myConstant = 90

// If we try to reassign the variable after it has already been set, we will get an error
//   final hoursSinceMidnight = DateTime.now().hour;
//   hoursSinceMidnight = 0

//Mini Exercise
// 1. Declare a constant of type int called myAge and set it to your age
// 2. Declare a variable of type dpuble called averageAge. Initially,set the variable to your own age. Then, set it to the average of your age and your best friends age
// 3. Create a constant called testNumber and initalize it with whatever integer you'd like. Next ,create another constant called evenOdd and set it to to testNumber modulo 2 . Now change testNumber to varous numbers .What do you notice abput evenOdd.
  const int myAge = 18;

  double averageAge = 18;
  averageAge = 18;

  // const int testNumber = 281829;

  // const evenOdd = testNumber % 2;

  // testNumber = 45466;

  //increment and decrement
  var counter = 0;

  counter += 1;

  counter -= 1;

  var counter1 = 0;

  counter1++;
  counter1--;

  double myValue = 10;

  myValue += 3;

  myValue /= 2;

  // Challenges

  //Challenge 1 - variables
  int myAge1 = 12;
  int dogs = 0;
  dogs += 1;
  //Challenge 2 - Make it compile
  int age = 16;
  print(age);
  age = 20;
  print(age);
  //Challenge 3 - Compute the answer
  const x = 46;
  const y = 10;
  const answer1 = (x * 100) + y;
  const answer2 = (x * 100) + (y * 100);
  const answer3 = (x * 100) + (y / 10);
  print(
    answer1,
  );
  print(
    answer2,
  );
  print(
    answer3,
  );

  //Challenge 4 Average rating ;
  double rating1 = 134.4343;
  double rating2 = 1232.433;
  double rating3 = 123223.4343;

  double averageRating = rating1 + rating2 + rating3;

  //Challenge 5 - Quadratci Equations
  const double a = 2.25355;
  const double b = 2.71828;
  const double c = 82.8383;

  final double root1 = -b + sqrt(pow(b, 2) - 4 * a * c) / 2 * a;
  final double root2 = -b + sqrt(pow(b, 2) - 4 * a * c) / 2 * a;

//Types and operations
  int myInteger = 14;
  double myDouble = 3.45;

  const int myInteger1 = 10;
  const double myDouble2 = 3.25;

  final int myInteger2 = 10;
  final double myDouble3 = 9.220;

  num myNumber = 3.14;
  print(myNumber is double);
  print(myNumber is int);

  print(myNumber.runtimeType);

// Dart will complain if you try to do this type of naive type conversion
//Dart disallowss you from assigning a type of one value to another
  var integer = 100;
  var decimal = 1.4;
  // integer = decimal;

// You can convert a double to an int this way ;

  integer = decimal.toInt();

  const hourlyRate = 19.5;
  const hoursWorked = 10;
  const totalCost = hourlyRate * hoursWorked;
  // dart will make the total cost a double, but if ypou want the result to be an int , then ypu can convert it like this

  // Now you will get an error saying that Const variables must be initialized with a constant value.Try changing the initializer to be a constant expression.
  // This is because toInt() is a runtime method , the error goes away when we change the const to final
  final totalCost1 = (hourlyRate * hoursWorked).toInt();

  const wantADouble = 3;

  final actuallyDouble = 3.toDouble();

  // without type inference using the double annotation
  const double actuallyDouble1 = 3;

  num someNumber = 3;

  // we will get an error , because the type num is to broad to use the isEven method, which only works on integers , whilst num just includes both the type doubkle and int, so there is a possibility that it might be a doubla at runtime

  // print(someNumber.isEven);

  final someInt = someNumber as int;
  print(someInt.isEven);

  num someNumber1 = 3;
  final someDouble = someNumber1 as double;


//Mini exercise 
//1.
}
