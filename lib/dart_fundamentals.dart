import 'dart:async';
import 'dart:isolate';
import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'dart:math';
import 'package:characters/characters.dart';

void main() async {
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

  // final someInt = someNumber as int;
  // print(someInt.isEven);

  // num someNumber1 = 3;
  // final someDouble = someNumber1 as double;

//Mini exercise
//1.Create a constant called age1 and set it equal to 42.
// Create another constant called age2 and set it equal to 21.Check that the type for both constants has been inferred correctly as int by hovering your mouse pointer over the variable names in VS Code .
//2 Create a constant called averageAge and set it equal to the average of age1 and age2 using the operation (age1 + age2)
// Hover your mouse pointer over the averageAge to check the type. Then check the result of averageAge. Why is it a double if the components are all int

//Strings
  var greeting = 'hELLO, DART';
  print(greeting);
  var salutation = 'Hello';
  print(salutation.codeUnits);

  const dart = '🎯';
  print(dart.codeUnits);
  print(dart.runes);

  // we can imort a dart package called 'characters' to handle grapheme clusters
  const family = '👨‍👩‍👧‍👦';
  print(family.characters.length);
  var message = 'Hello' + ' my name is ';
  const name = 'Ray';
  message += name;
  // If you find yourself doing a lot of concatenation , you should use a string buffer
  final message1 = StringBuffer();
  message1.write('hello');
  message1.write('My name is ');
  message1.write('kelqsa');
  message.toString();
  //This creates a mutable lication in memory where you can add to the string without aving to create a new stirng every change

  //interpolation - very similar to javascript interpolation

  const oneThird = 1 / 3;
  const sentence = 'One third is $oneThird';
  final sentence1 = 'One third is ${oneThird.toStringAsFixed(3)}';
  print(sentence1);

  // in dart , three quotes can represent multi line strings
  const bigString = '''You can have a string
       that contains multiple 
       lines 
       by doing 
       this ''';
  print('I \u2764 Dart \u0021');

  //Objects
  // var myVariable1 = 42;
  // myVariable1 = "hello";
  // Compile time error

  dynamic myVariable2 = 42;
  myVariable2 = 'hello';
  //No error

  Object? myVariable3 = 42;
  myVariable3 = 'hello';

  //Challenge 1 - teacher's grading
  final double attendance = (90 / 100) * 20;
  final double homework = (80 / 100) * 30;
  final double examination = (94 / 100) * 50;

  final grade = (attendance + homework + examination).round();
  print(grade);

  //Same same, but different different

  const twoCountries = '🇹🇩🇷🇴';
  print(twoCountries.runes);
  // Romanias regional indicator sequence is RO, and R is 127479 in decimal
  //Chad which is Tishad in Arabic has a regional indicator sequnce of TD, of which Sequence letter T is 127481 in decimal

  //Challenge 3 : How many?
  const vote = 'Thumbs up! 👍🏿';
  //There are 15 codeunits in the string
  print(vote.codeUnits.length);
  // There are 13 codepoint in the vote string
  print(vote.runes.length);
  //There are grapheme clusters in the vote string
  print(vote.codeUnits);

  //challenge 4
  // print();
  //challenge 5
  //What is the type of the value
  const value = 10 / 2;
  print(value.runtimeType);
  //challenge 6 In summary
  const number1 = 10;
  const multiplier = 5;
  final summary = '$number \u00D7 $multiplier = ${number * multiplier}';
  print(summary);

  //control flow

  const bool yes = true;
  const bool no = false;

  const doesOneEqualTwo = (1 == 2);
  print(doesOneEqualTwo);
  const doesOneNotEqualTwo = (1 != 2);

  const alsoTrue = !(1 == 2);

  //Mini exercises

  const isTeenager = (myAge > 13 && myAge < 19);

  const maryAge = 30;

  const bothTeenagers =
      ((myAge > 13 && myAge < 19) && (maryAge > 13 && maryAge < 19));
  print(bothTeenagers);
  const reader = 'ibukunoluwa';
  const ray = 'Ray Wenderlich';

  const rayIsReader = reader == ray;
  print(rayIsReader);
  //Enumerated types e.g enums

  switch (AudioState.playing) {
    case AudioState.playing:
      print('I am Playing');
      break;
    case AudioState.paused:
      print('I am paused');
      break;
    case AudioState.stopped:
      print('i am stopped');
      break;
  }

  final random = Random();

  while (random.nextInt(6) + 1 != 6) {
    print('Not a six');
  }

  const myString = 'I ❤ Dart !';

  for (var codePoint in myString.runes) {
    print(String.fromCharCode((codePoint)));
  }
  //Mini exercises
  var counter2 = 0;

  while (counter2 < 10) {
    print('counter is $counter');
    counter2++;
  }
  for (var i = 0; i <= 10; i++) {
    print(pow(i, 2));
  }
  const numbers = [1, 2, 4, 7];
  for (var num in numbers) {
    print(sqrt(num));
  }
  numbers.forEach((number) => print(number));

  //challenge 1
  // const firstName = 'Bob';
  // if (firstName == 'Bob') {
  //   const lastName = 'Smith';
  // } else if (firstName == 'Ray') {
  //   const lastName = 'Wenderlich';
  // }
  // final fullName = firstName + ' ' + lastName;
  // lastname is undefined , out of scope

  //Challenge 2
  true && true;
  false || false;
  (true && 1 != 2) || (4 > 3 && 100 < 1);
  ((10 / 2) > 3) && ((10 % 2) == 0);

  //Challenge 3 Next power of two;
  //Challenge 4 fibonacci
  //Challenge 5 How many times
  var sum = 0;
  for (var i = 0; i <= 5; i++) {
    sum += i;
  }
  // Challenge 6
  var i = 11;
  while (i > 0) {
    i--;
    print(i);
  }
  //Challenge 7
  double j = 0.0;
  while (j < 1.0) {
    j += 0.1;
    print(j.toStringAsFixed(1));
  }
  //Chapter 5 - functions
  String fullName(String first, String last, String title) {
    return '$title $first $last';
  }

  print(fullName('first', 'last', 'title'));
  String fullName1(String first, String last, [String? title]) {
    if (title != null) {
      return '$title $first $last';
    } else {
      return '$first $last';
    }
  }

  print(fullName1('first', 'last'));
  //The question mark '?' is not written after the type, it is part of the type,
  bool withinTolerance(int value, [int min = 0, int max = 10]) {
    return min <= value && value <= max;
  }

  // we use curly braces to create named parameters
  bool withinToleranceNamed(int value, {int min = 0, int max = 10}) {
    return min <= value && value <= max;
  }

  withinTolerance(5);
  withinTolerance(15);
  print(withinToleranceNamed(9, min: 7, max: 11));
  //Another benefit is that you don't have to use them in the order they were defined
  //named parameters are optional by default
  print(withinToleranceNamed(9, max: 13, min: 9));
  // we will make value required instead of optional while still keeping it a named parameter
  bool withinToleranceNamedValue(
      {required int value, int min = 0, int max = 10}) {
    return min <= value && value <= max;
  }

  String youAreWonderful({required name, numberPeople = 30}) {
    return 'You\'re wonderful $name. $numberPeople people think so';
  }

  print(youAreWonderful(name: 'Ibukunoluwa', numberPeople: 1));
  print(withinToleranceNamedValue(value: 4, min: 4, max: 18));

  int Number = 4;
  String Greeting = 'hello';
  bool isHungry = true;

  // Function multiply(int a, int b) {
  //   return a * b;
  // }
  // A function expression can't have a name
  // Function myFunction = int multiply(int a,int b) {
  //   return a * b;
  // }
  Function namedFunction() {
    return () {
      print('hello');
    };
  }

  // final multiply = (int a, int b) {
  //   return a * b;
  // };

  // print(multiply(2, 3));

  // Function applyMultiplier(num multiplier) {
  //   return (num value) {
  //     return value * multiplier;
  //   };
  // }

  const numbers3 = [1, 2, 3];

  numbers.forEach((number) {
    final tripled = number * 3;
    print(tripled);
  });

  Function applyMultiplier(num multiplier) {
    return (num value) {
      return value * multiplier;
    };
  }

  final triple = applyMultiplier(3);
  print(triple(6));
  print(triple(14.0));
  //closure
  Function countingFunction() {
    var counter = 0;
    final incrementCounter = () {
      counter += 1;
      return counter;
    };
    return incrementCounter;
  }

  final Counter1 = countingFunction();
  final Counter2 = countingFunction();

  print(Counter1());
  print(Counter2());
  print(Counter1());
  print(Counter1());
  print(Counter2());

  //Mini exercises

  const people = ['Chris', 'Tiffani', 'Pablo'];

  people.forEach((person) => print('$person, you\'re wonderful!'));

  // Challenge 1
  //Write a function that checks if a number is prime

  //Challenge 2
  //Can you repeat that

  // int repeatTask(int times, int input, Function task) {
  //   return task(input, times);
  // }

  // print(repeatTask(4, 2, () {pow()}));

  //Classes
  //before version 2.0 of dart came out the new keyword was neeeded to create an object from a class
  // final user = new User();
  final user = User(6, 'john');

  // final user1 = user.name;
  // final id = user.id;

  final user1 = user.name;
  final id = user.id;

  // user.name = 'Ray';
  // user.id = 42;

  print(user);

  @override
  String toString() {
    return 'User(id: $id, name:$name)';
  }

  //simple JSON deserialisation method
  print(user.toJson());

  // final user2 = User()
  //   ..name = 'Ray'
  //   ..id = 42;

  final user2 = User(4738, 'Remn');
  print(user);

  //Named constructor
  // final anonymousUser = User.anonymous();
  // print(anonymousUser);

  final map = {'id': 10, 'name': 'Manda'};
  final manda = User.fromJson(map);
  print(manda);

  // const password = Password1();

  final email = Email();
  // This line sets the internal _address field
  email.value = 'ray@example.com';
  // This line gets the internal _address field
  final emailString = email.value;

  final email1 = Email1('ibukunoluwaakintobi@gmail.com');
  final emailString1 = email.value;

  final value1 = SomeClass.myProperty;
  SomeClass.myMethod();

  final student1 = Student('bert', 'simpson', 17);
  final student2 = Student('ernie', 'hangover', 46);

  print(student1.format());
  print(student2.format());

//nullable types
  int? myId = null;
  double? myDouble1 = null;
  String? myString1 = null;
  User? myUser = null;

  //if the value on the left isn't null, use it otherwise go with the value on the right
  // using this it ensures that the text can never be null
  String? Message;
  // String text;
  final text = Message ?? 'Error';
  // Its equivalent to
  // if (message == null) {
  //   text = 'Error';
  // } else {
  //   text = Message;
  // }

// if you have a single variable you want to update if its value is null
  double? fontSize;

  // fontSize = fontSize ?? 20.0;
  // we can do it shorter like this
  fontSize ??= 20.0;

  // retrurns null if the left hand side is null , else it returns the property on the right hand side
  int? age1;
  // This one crashes
  // print(age1.isNegative);
  // Since age is null, it just returns null instead of crashing it prints "null" without an error
  print(age?.toDouble());

  // String nullableString = myNullableString!;

  bool? isBeautiful(String? item) {
    if (item == 'flower') {
      return true;
    } else if (item == 'garbage') {
      return false;
    }
    return null;
  }

  // bool flowerIsBeautiful = isBeautiful('flower');
  //we would get this error
  //A value of type 'bool?' can't be assigned to a variable of type 'bool'.
  bool flowerIsBeautiful = isBeautiful('flower') as bool;
  // since bool? is a subtype of bool we can cast it to bool

  // or we can use the if null operator
  bool flowerIsBeautifulIfNull = isBeautiful('flower') ?? true;

  //If you know the object isn't nullable , you can use the cascade operator,  normally, however if your object is nullable
  // User? user;
  // user
  // ?..name = 'antelope';
  // ..id = 42

  // String? lengthString = user?.name?.length.toString();

  List<int>? myList = [1, 2, 3];

  myList = null;

  int? myItem = myList?[2];

  //Challenge 1
  // Function randomNothings() {
  //   var rand = Random();
  //   if (rand.nextInt(1) == 0) {

  //   }
  //   else if (rand.nextInt(1) == 1) {

  //   }
  // };
  // challenge 2

  List<String> desserts = ['cookies', 'cupcakes', 'donuts'];

  var snacks = <String>[];

  print(desserts);

  final index = desserts.indexOf('donuts');
  final dessert = desserts[index];
  print(dessert);

  desserts.add('ice cream');

  desserts.remove('cake');

  final Desserts = ['chocolate', 'vanilla', 'strawberry'];

  const dessertsImmutable = ['cookies', 'doughnut', 'pie'];

  final dessertsImmutable2 = const ['cookies', 'doughnut', 'chocolate bread'];

  final modifiableList = [DateTime.now(), DateTime.now()];

  final unmodifiableList = List.unmodifiable(modifiableList);

  const drinks = ['water', 'lacasera', 'fourcousins'];

  print(drinks.last);
  print(drinks.first);
  print(drinks.isEmpty);
  print(drinks.isNotEmpty);

  for (var drink in drinks) {
    print(drink);
  }
  drinks.forEach((drink) => print(drink));

  const sweets = ['bonbon', 'bounty', 'snickers', 'toblerone'];
  const pastries = ['cookies', 'croissants'];

  const allDesserts = ['donuts', ...sweets, ...pastries];

  print(allDesserts);

  List<String>? coffees;

  final hotDrinks = ['milktea', ...?coffees];

  //collection if

  const peanutAllergy = true;
  const candy = [
    'senior mints',
    'Twizzlers',
    if (!peanutAllergy) 'Reeses pieces',
    // it works even though the IDE is showing me dead code
  ];
  print(candy);

  //collection for

  const deserts = ['sahara', 'gobi', 'arctic'];
  var bigDeserts = [
    'ARABIAN',
    for (var desert in deserts) desert.toUpperCase()
  ];
  print(bigDeserts);

  // Mini Exercise 1
  List<String> months = [];

  months.add('January');
  months.add('February');
  months.add('march');
  months.add('april');
  months.add('May');
  months.add('June');
  months.add('July');
  months.add('August');
  months.add('September');
  months.add('October');
  months.add('November');
  months.add('December');

  var unModifiableMonths = List.unmodifiable(months);

  var MONTHS = [for (var month in months) month.toUpperCase()];

  //Sets
  final Set<int> someSet = {1, 2, 3, 3, 4, 45, 4};

  print('$someSet');

  print(someSet.contains(34));

  someSet.add(90);

  someSet.remove(45);

  someSet.addAll([1, 2, 3, 4, 5]);

  final setA = {
    4,
    5,
    6,
    6,
    3,
  };

  final setB = {4, 39, 291, 2, 6, 5};

  final intersection = setA.intersection(setA);
  final union = setA.union(setA);

  //Maps

  final Map<String, int> emptyMap = {};

  final emptyMap1 = <String, int>{};

  //initializing a map with values
  final inventory = {'cakes': 20, 'pies': 14, 'donuts': 45, 'cookies': 141};

  final digitMap = {1: 'one', 2: 'two', 3: 'three'};

  //keys have to be unique , values however don't have that restriction

  // final myMap = {
  //   'greeting' : 'hello',
  //   'greeting' : 'hello',
  //   'reply':'hi',
  // }

  final numberOfCakes = inventory['cakes'];

  print(numberOfCakes?.isEven);

  //Adding to the map
  inventory['brownies'] = 90;

  //Updating an element
  inventory['cakes'] = 1;

  inventory.remove('cookies');

  print(inventory.keys);
  print(inventory.values);

  print(inventory.containsKey('pies'));

  // Unlike lists, you can't iterate over a map
  // for (var item in inventory) {
  //   print(inventory[item]);
  // }
  for (var item in inventory.keys) {
    print(inventory[item]);
  }
  // You can use the forEach method
  inventory.forEach((key, value) => '$key -> $value');

  //or using for loop
  for (final entry in inventory.entries) {
    print('${entry.key} -> ${entry.value}');
  }

  //Mini exercises

  final anotherMap = {
    'name': 'ibukunoluwa',
    'profession': 'Software Engineer',
    'country': 'Nigeria',
    'city': 'Lagos'
  };
  anotherMap['country'] = 'Canada';
  anotherMap['city'] = 'Toronto';

  for (var value in anotherMap.entries) {
    print(value);
  }

  const numbers1 = [1, 3, 4, 5];
  final squares = numbers.map((number) => number * number);
  //Squares is actually an iterable of int not a List, as you can see, if you print it is in parentheses if you really want a list , you can use .toList()
  print(squares.toList());
  //You can filter a collection using the where method

  final evens = squares.where((square) => square.isEven);

  const amounts = [199, 299, 299, 499];
  final total = amounts.reduce((sum, element) => sum + element);
  print(total);

  final desserts2 = ['cookies', 'pie', 'donuts', 'brownies'];

  desserts2.sort();

  var desserts2reversed = desserts2.reversed;

  //Performing a custom sort
  desserts2.sort((d1, d2) => d1.length.compareTo(d2.length));

  const desserts3 = ['cake', 'pie', 'brownies'];

  final bigTallDeserts = desserts
      .where((desert) => dessert.length > 5)
      .map((dessert) => dessert.toUpperCase());

  print(bigTallDeserts);

  //Mini exercises
  final scores = [89, 77, 46, 93, 82, 67, 32, 88];

  scores.sort();

  final rangeScores = scores.where((el) => el > 80 && el < 90);

  print(rangeScores);

  // Challenges

  //Challenge 1

  List<String> uniqueRequest(String paragraph) {
    final Set<String> uniqueSet = {};
    for (var word in paragraph.split(' ')) {
      for (var letter in word.split('')) {
        uniqueSet.add(letter);
      }
    }
    return uniqueSet.toList();
  }

  print(uniqueRequest(
      'hello i am a person that likes to write Javascript , Typescript, NEXTJS'));

  //Challenge 2

  Map<String, num> uniqueRequestFreqCounter(String paragraph) {
    final Map<String, num> freqCounter = {};
    for (var word in paragraph.split(' ')) {
      for (var letter in word.split('')) {
        freqCounter[letter] = (freqCounter[letter] ??= 0) + 1;
      }
    }
    return freqCounter;
  }

  print(uniqueRequestFreqCounter('hello i am a person that likes to write'));

  //Challenge 3

  //Advanced Classes
  print(jon.fullName);
  print(jane.fullName);

  final historyGrade = Grade.B;
  jane.grades.add(historyGrade);

  final jessie = SchoolBandMember('jessie', 'ouupravosky');
  final marty = StudentAthlete('Marty', 'simmons');

  final students = [jane, jessie, marty];

  print(jessie is Object);
  print(jessie is Person);
  print(jessie is Student);
  print(jessie is SchoolBandMember);
  print(jessie is! StudentAthlete);

  final platypus = Platypus();
  print(platypus.isAlive);
  platypus.eat();
  platypus.move();
  print(platypus);

  final DataRepository repository = FakeWebServer();
  final temperature = repository.fetchTemperature('berlin');

  final someClass = SomeClass1();

  print(someClass.myField);
  someClass.myMethod();

  final bottle = Bottle();
  bottle.open();

  final platypus1 = Platypus();
  platypus1.layEggs();

  String encode(String input) {
    //This function uses a StringBuffer for effieint Stirng manipulation normal strings are immutable, but StringBuffers are immutable
    final output = StringBuffer();
    for (final codePoint in input.runes) {
      output.writeCharCode(codePoint + 1);
    }
    return output.toString();
  }

  final original = 'abc';
  final secret = encode(original);
  print(secret);
  //we can convert our encode function above to an extension
  // final secret1 = 'abc'.encoded;

  // final secret1Decoded = secret1.decoded;

  // print(secret1Decoded);
  final original1 = 'I like extensions';
  final secret1 = original1.encoded;
  final revealed = secret1.decoded;
  print(secret1);
  print(revealed);
  print(5.cubed);

// The Future is of type int, after a delay of 10 seconds dart will add it to the event queue

  final myFuture = Future<int>.delayed(Duration(seconds: 1), () => 42);
//If we print it, we will get  Instance of 'Future<int>', this is because your variable isn't 42, its a Future that is a promise to return 42
  print(myFuture);

  print('Before the future 1');
  final myFuture1 = Future<int>.delayed(Duration(seconds: 1), () => 42)
      .then(
        (value) => print('Value1 : $value'),
      )
      .catchError(
        (error) => print('Error1 : $error'),
      )
      .whenComplete(() => print('Future1 is complete'));

  print('After the future 1');

//Getting the results with async await
  print('Before the future 2');
  final valueAsync = await Future<int>.delayed(Duration(seconds: 1), () => 43);
  print('Value2 : $valueAsync');
  print('After the future 2');

  // Using a try Catch Statement
  print('Before the future 3');
  try {
    final value = await Future<int>.delayed(Duration(seconds: 1), () => 43);
    print('Value : $value');
    throw Exception('There was an error');
  } catch (error) {
    print(error);
  } finally {
    print('Future is completed 3');
  }
  print('After the future 3');

  final url = 'https://jsonplaceholder.typicode.com/todos/1';
  final parsedUrl = Uri.parse(url);
  final response = await http.get(parsedUrl);
  final statusCode = response.statusCode;
  if (statusCode == 200) {
    final rawJsonString = response.body;
    final jsonMap = jsonDecode(rawJsonString);
    final todo = Todo.fromJson(jsonMap);
    print(todo);
  } else {
    throw HttpException('$statusCode');
  }
  //since it takes time to contact a server , http.get returns a future dart passes off the work of contacting the remote server to the underling platform, so you won't need to worry about it blocking your app while you wait , since you are using the await keyword, the rest of the main method will be added to the event queue when the future completes

  // now with a try-Catch block
  try {
    final url = 'https://jsonplaceholder.typicode.com/todos/1';
    final parsedUrl = Uri.parse(url);
    final response = await http.get(parsedUrl);
    final statusCode = response.statusCode;
    if (statusCode == 200) {
      final rawJsonString = response.body;
      final jsonMap = jsonDecode(rawJsonString);
      final todo = Todo.fromJson(jsonMap);
      print(todo);
    } else {
      throw HttpException('$statusCode');
    }
  } on SocketException catch (error) {
    print(error);
  } on HttpException catch (error) {
    print(error);
  } on FormatException catch (error) {
    print(error);
  }
  //Mini Exercises
  try {
    String messageFuture = await Future.delayed(
        Duration(seconds: 2), () => "I am from the future");
  } catch (error) {
    print(error);
  }
  // The dart:io libraray contains a File class which allows you to read data from a file.First, you'll read data the easy way using the readAsString method, which returns the contents of the file as a Future
  // In the book it was specified that i could use a relative path from the current path, but it was showing me an error so i used the absolute path and it worked
  // final file = File('dart-fundamentals/assets/text.txt');
  final file = File(
      '/Users/ibukunoluwaakintobi/Desktop/flutter_fundamentals/dart-fundamentals/assets/text.txt');

  // check if file exists
  bool doesEXIST = await file.existsSync();
  print(doesEXIST);
  // print the current working Directory
  print(Directory.current.path);

  // print the contents of the file
  final dir =
      Directory('/Users/ibukunoluwaakintobi/Desktop/flutter_fundamentals/');
  final List<FileSystemEntity> entities = await dir.list().toList();
  entities.forEach(print);

  final contents = await file.readAsString();
  print(contents);

  // File also has a readAsStringSync method, which would run synchronously and avoid awaiting a future. However, doing so would block your app if the reading takes a while
  // Many of the file methods have synchronous methods, but in order to prevent blocking your app, you should generally use the asynchrnous versions
  // When the file is large you can read it as a stream

  // Instead of using the readAsString on file , this tome you are using openRead() which will return a Stream<List<int>> - this is basically a Stream periodically produces a list of integers - these integers are byte values
  // To subscribe for notifications whenever there is new data coming in from the stream
  // calling data.length will tell you the number of bytes in the chunk
  final fileLong = File(
      '/Users/ibukunoluwaakintobi/Desktop/flutter_fundamentals/dart-fundamentals/assets/text_long.txt');
  final stream = file.openRead();

  // stream.listen((data) {
  //   print('${data.length} bytes - number of bytes in the chunk ');
  // });
  //By default only a single object can listen to a stream ,(think of it as subscribing to an Observable in rxjS) this is known as a single subscription stream , if you wnat more than one object to be notified of stream events, then you create a broadcast stream like so (Think of it like a subject in rxJS)
  // final broadCastStream = stream.asBroadcastStream();

  //Using an asynchronous for loop
  // we used the listen callback earlier , here is an example using a for await loop
  // await for (var data in stream) {
  //   print(data.length);
  // }

  // like Futures stream events can also produce errors instead of values, we can handle them using callbacks or try catch blocks
  // when a stream finsihes sending all the data it will fire a done event
  // stream.listen((data) {
  //   print(data.length);
  // }, onError: (error) {
  //   print(error);
  // }, onDone: () {
  //   print('All finished');
  // });

  try {
    final fileLong = File(
        '/Users/ibukunoluwaakintobi/Desktop/flutter_fundamentals/dart-fundamentals/assets/text_long.txt');
    final stream = file.openRead();
    await for (var data in stream) {
      print(data.length);
    }
  } on Exception catch (error) {
    print(error);
  } finally {
    print('Finished');
  }

  // you can use the cancelOnError parameter to tell the stream that you want to stop listening in the case of an error
  // StreamSubscription<List<int>>? subscription;
  // subscription = stream.listen(
  //     (data) {
  //       print(data.length);
  //       subscription?.cancel();
  //     },
  //     cancelOnError: true,
  //     onDone: () {
  //       print('All finished');
  //     });

  //viewing the bytes
  // as you can see the numbers in the list, you will realize that they are the unicode representation of the letters in the text file
  // Computes encode files differently , but this one is from a computer that uses UTF-8 encoding
  // stream.listen(
  //   (data) {
  //     print(data);
  //   },
  // );

//Decoding the bytes
  try {
    // The utf8.decoder takes a byte and converts it to a string
    await for (var data in stream.transform(utf8.decoder)) {
      print('$data - |DECODED DATA|');
    }
  } catch (error) {
    print(error);
  }
  //Mini Exercises
  try {
    Stream<int> myStream = Stream<int>.periodic(
      Duration(seconds: 1),
      (value) => value,
    ).take(10);
    await for (int integerValue in myStream) {
      print(integerValue);
    }
  } catch (error) {
    print(error);
  }

  //Isolates
  String playHideAndSeekTheLongVersion() {
    var counting = 0;
    for (var i = 1; i < 100000000; i++) {
      counting = i;
    }
    return '$counting! Ready or not, here I come!';
  }

  print("OK, I'm counting...");
  // print(playHideAndSeekTheLongVersion());

  // even making it asynchrnous wouldnt fix it - the fact that it is computationally intensive
  Future<String> playHideAndSeekTheLongVersionAsync() async {
    var counting = 0;
    await Future(() {
      for (var i = 1; i <= 10000000000; i++) {
        counting = i;
      }
    });
    return '$counting! Ready or not, here I come!';
  }

  print("OK, I'm counting...");
  // print(playHideAndSeekTheLongVersionAsync());

  //Spawning an isolate

  void playHideAndSeekTheLongVersionIsolateVersion(SendPort sendPort) {
    var counting = 0;
    for (var i = 1; i <= 1000000000; i++) {
      counting = 1;
    }
    sendPort.send('$counting! Ready or not, here I come!');
  }

  //Spawning the isolate and listening for messages
  //created a receivePort to listen for messages from the new isolate
  final receivePort = ReceivePort();

  //Spawned a new isolate and gave it two new arguments
  //arg 1 - the function you want the isolate to execute
  // - must be a top-level or static fucntion
  // - must also take a single parameter
  //arg 2 - will be passed as the argument to playHideAndSeekTheLongVersionIsolateVersion
  final isolate = await Isolate.spawn(
      playHideAndSeekTheLongVersionIsolateVersion, receivePort.sendPort);

  //receivePort.listen gets a callback whenever sendPort sends a message
  receivePort.listen((message) {
    print(message);
    receivePort.close();
    //Here, the isolate is no longer needed after the work is done, so you can close the receiveport port and kill the isolate to free up memory
    isolate.kill();
  });

// note - The Flutter framework has a highly simplified way to start a new isolate, perform some work, and then return the result using a function called compute. Rather than passing the function a send port, you just pass it any values that are needed. In this case, you could just pass it the number to count to:
// await compute(playHideAndSeekTheLongVersion,
// 10000000000);
  //Challenges
  //Challenge 1 - whose turn is it ?
  //Challenge 2 - Care to make a comment
  final url1 = 'https://jsonplaceholder.typicode.com/comments';
  final parsedUrl1 = Uri.parse(url1);
  final response1 = await http.get(parsedUrl1);
  final statusCode1 = response.statusCode;
  if (statusCode == 200) {
    final rawJsonString = response1.body;
    final jsonListMap = jsonDecode(rawJsonString);
    //Check the type of the data it is list<dynamic> ;
    // print(jsonMap.runtimeType);
    List<Comment> commentList = [];
    for (Map<String, Object?> obj in jsonListMap) {
      commentList.add(Comment.fromJson(obj));
      print(Comment.fromJson(obj));
      // print(Comment.fromJson(obj).body);
    }
    print(commentList);
    // Comment.fromJson(jsonMap);
    // print(todo);
  } else {
    throw HttpException('$statusCode');
  }

  //Challenge 3
  final url2 = Uri.parse('https://raywenderlich.com');
  final client2 = http.Client();
  final request2 = http.Request('GET', url2);
  final response2 = await client2.send(request2);
  final stream2 = response2.stream;

  try {
    await for (var data in stream2.transform(utf8.decoder)) {
      print(data.length);
    }
  } catch (error) {
    print(error);
  } finally {
    client2.close();
  }
  //Challenge 4
  // program to generate fibonacci series up to a certain number

// take input from the user

  // void fibonacciIsolate(SendPort sendPort) {
  //   int n1 = 0, n2 = 1, nextTerm;

  //   nextTerm = n1 + n2;

  //   while (nextTerm <= number) {
  //     // print the next term
  //     print(nextTerm);

  //     n1 = n2;
  //     n2 = nextTerm;
  //     nextTerm = n1 + n2;
  //   }
  //   sendPort.send('This is the $nextTerm');
  // }

  // final receivePort2 = ReceivePort();

  // final isolate1 = await Isolate.spawn(fibonacciIsolate, receivePort.sendPort);

  // receivePort2.listen((message) {
  //   print(message);
  //   receivePort2.close();

  //   isolate1.kill();
  // });
  Iterable<int> getOneTwoThree() sync* {
    yield 1;
    yield 2;
    yield 3;
  }

  for (final value in getOneTwoThree()) {
    print(value);
    if (value == 2) {
      break;
    }
  }
}

enum Weather { sunny, snowy, cloudy, rainy }

const weatherToday = Weather.cloudy;

final index = weatherToday.index;

enum AudioState { playing, paused, stopped }

const audioState = AudioState;

class User {
  //class constructor - long form constructor
  // User(int id, String name) {
  //   this.id = id;
  //   this.name = name;
  // }

  // int id = 0;
  // String name = '';

  // User.anonymous() {
  //   id = 0;
  //   name = 'anonymous';
  // }
// class constructor - short form constructor
  User(this.id, this.name);

//You can make classes optional this way
// MyClass([this.myProperty])
// MyClass({this.myProperty})

  // User.anonymous() : this(0, 'anonymous');

  //This time theres no constructor body but instead ypu follow the name with a colon then forward the properties to the unnamed constructor .The forwarding syntax replaces User with this.

  final int id;
  final String name;

  // final anonymousUser = User.anonymous();

  String toJson() {
    return '{"id":$id,"name":"$name"}';
  }

  //initializer lists
  //private variables
  //factory constructors
  factory User.ray() {
    return User(42, 'Ray');
  }
  //factory method
  factory User.fromJson(Map<String, Object> json) {
    final userId = json['id'] as int;
    final userName = json['name'] as String;
    return User(userId, userName);
  }

  //named constructor
  User.fromJson1(Map<String, Object> json)
      : id = json['id'] as int,
        name = json['name'] as String;

  static const myConstant = '42';

  static const _anonymousId = 0;
  static const _anonymousName = 'anonymous';

  // const User({this.id = _anonymousId, this.name = _anonymousName})
  //   : assert(id >= 0);
}

class Password {
  String value = '';

  @override
  toString() {
    return value;
  }

  isValid() {
    if (value.length > 8) {
      return true;
    }
    return false;
  }
}

//Mini exercises
class Password1 {
  final String value = '';
}

class Email {
  var _address = '';

  String get value => _address;

  set value(String address) => _address = address;
}

//If you want a getter without a setter, then just make the property final , which will require using a constructor to initialize the property
class Email1 {
  Email1(this.value);
  final value;
}

//Static Members

class SomeClass {
  static int myProperty = 0;
  static void myMethod() {
    print('hello world');
  }
}

//Challenges
//Challenge 1

class Student {
  final String firstName;
  final String lastName;
  int grade = 0;
  Student(this.firstName, this.lastName, this.grade);
  format() {
    print('$firstName $lastName, grade:$grade');
  }
}

//Challenge 2
// class Sphere {
//   num radius;
//   const Sphere({this.radius = radius});
// }

// you can also use an initializer list to set a field variable

class User1 {
  User1(String name) : _name = name;
  String _name;
}

// Using default parameter values
//ordered parameters
class User2 {
  User2([this.name = 'anonymous']);
  String name;
}

// named parameters
class User3 {
  User3({this.name = 'anonymous'});
  String name;
}

class User4 {
  User4({required this.name});
  String name;
}
//if you want the property to be nullable then you can use a nullable type, and theres no need to initialize the value

class UserN {
  UserN({this.name});
  String? name;
}

class TextWidget {
  String? text;
  bool isLong() {
    final text = this.text; // shadowing
    if (text == null) {
      return false;
    }
    // dart can't guarantee that other mthods or subclasses can't change the value of a non local variable before its used, thats why you have an error . you can use the bang operator
    // another method you can use is shadowing or , you shadow the variable
    // the local varibale text shadows the instance variable this.text and the compiler would not throw any errors
    // return text.length > 100;
    // return text!.length > 100;
    return text.length > 100;
  }
}

class User5 {
  User5(this.name);

  final String name;
  late final int _secretNumber = _calculateSecret();

  int _calculateSecret() {
    return name.length + 42;
  }
}

// class userMap {
//   final String name;
//   final String id;

//   List<String> = []
// }
enum Grade { A, B, C, D, E, F }

class Person {
  Person(this.givenName, this.surname);

  String givenName;
  String surname;
  String get fullName => '$givenName $surname';

  @override
  String toString() => fullName;
}

class Student1 {
  Student1(this.givenName, this.surname);
  String givenName;
  String surname;
  var grades = <Grade>[];
  String get fullName => '$givenName $surname';

  @override
  String toString() => fullName;
}

// as you can see in the Person adn student classes they are very similar , we can remove the duplicatin  between Student and Person by making Student extend Person
class Student2 extends Person {
  Student2(String givenName, String surname) : super(givenName, surname);
  var grades = <Grade>[];

  @override
  String get fullName => '$surname, $givenName';
}

final jon = Person('jon', 'wintercatcher');
final jane = Student2('jane', 'Goodread');

class someParent {
  void doSomething() {
    print('parent working');
  }
}

class SomeParent1 {
  void doSomework() {
    print('parent working');
  }
}
// class SomeChild1 {}

class SomeChild extends SomeParent1 {
  SomeChild(double height)
      : assert(height != 0), // Assert
        _height = height, // initializer
        super(); // super

  final double _height;
}

//Calling super from an overriden method
class SomeChild1 extends SomeParent1 {
  @override
  void doSomework() {
    super.doSomework();
    print('child doing some other work');
  }
}

//Multi Level Hierarchy
// class SchoolBandMember {}

class SchoolBandMember extends Student1 {
  SchoolBandMember(String givenName, String surname)
      : super(givenName, surname);
  static const minimumPracticeTime = 2;
}
//The SchoolBandMember calls the Stuent constructor with the super keyword, which in turn calls the Person keyword

// In order to be eligible for athletics , you have to make sure a student ahsn't failed all the other classes

class StudentAthlete extends Student1 {
  StudentAthlete(String givenName, String surname) : super(givenName, surname);
  bool get isEligible => grades.every((grade) => grade != Grade.F);
}

//Mini exercises

class Fruit {
  final String color;
  Fruit(this.color);

  String describeColor() {
    return 'i am $color in color';
  }
}

class Melon extends Fruit {
  Melon(String color) : super(color);
}

class WaterMelon extends Melon {
  WaterMelon(String color) : super(color);
  @override
  String describeColor() {
    return 'i am $color in color, but i am in the watermelon subclass';
  }
}

class CantaLoupe extends Melon {
  CantaLoupe(String color) : super(color);
}

//abstract classes

abstract class Animal {
  bool isAlive = true;
  void eat();
  void move();

  @override
  String toString() {
    return "I'm a $runtimeType";
  }
}

// class Platypus extends Animal implements Comparable {
class Platypus extends Animal {
  int? weight;

  @override
  void eat() {
    print('munch munch');
  }

  @override
  void move() {
    print('glide glide');
  }

  void layEggs() {
    print('Plop plop');
  }

  // @override
  // int compareTo(other) {}
}

//Creating an interface
//SInce there is no interface keyword in dart, we are going to use an abstract class as an interface

// abstract class DataRepository {
//   double? fetchTemperature(String city);
// }

abstract class DataRepository {
// Adding a factory constructor
  factory DataRepository() => FakeWebServer();
  double? fetchTemperature(String city);
}

//when making a concrete class to implement an interface , you use the implements keyword not the extends keyword

class FakeWebServer implements DataRepository {
  @override
  double? fetchTemperature(String city) {
    return 42.0;
  }
}

// a benefit of using interfaces is that you can create mock implementations to mimic the real implementations

class AnotherClass {
  int myField = 42;
  void myMethod() => print(myField);
}

class SomeClass1 extends AnotherClass {}

//Mini Exercises

abstract class Bottle {
  factory Bottle() => SodaBottle();
  void open();
}

class SodaBottle implements Bottle {
  @override
  void open() {
    return print('Fizz Fizz');
  }
}

// Mixinx are even new additions to dart, you might see legacy code still using classes as mixins
mixin EggLayer {
  void layEggs() {
    print('plop plop');
  }
}
mixin Flyer {
  void fly() {
    print('Swoosh swoodh');
  }
}

class Platypus1 extends Animal with EggLayer {
  @override
  void eat() {
    print('Munch munch');
  }

  @override
  void move() {
    print('Glide glide');
  }
}

//Mini exercises
mixin Adder {
  void sum(int int1, int int2) {
    print(int1 + int2);
  }
}

class Calculator with Adder {
  // sum(int int1, int int2) {
  //   print(int1 + int2);
  // }
}

// extension on String {
//   String get encoded {
//     final output = StringBuffer();
//     for (final codePoint in runes) {
//       output.writeCharCode(codePoint + 1);
//     }
//     return output.toString();
//   }

//   String get decoded {
//     final output = StringBuffer();
//     for (final codePoint in runes) {
//       output.writeCharCode(codePoint - 1);
//     }
//     return output.toString();
//   }
// }

//refactored version
extension on String {
  String get encoded {
    return _code(1);
  }

  String get decoded {
    return _code(-1);
  }

  String _code(int step) {
    final output = StringBuffer();
    for (final codePoint in runes) {
      output.writeCharCode(codePoint + step);
    }
    return output.toString();
  }
}

//int extension example

extension on int {
  int get cubed {
    return this * this * this;
  }
}

//enum extension example

//Challenges

//Challenge 1
//up

//Challenge 2
// Fake Notes

//Challenge 3
//Time to code

// Challenge 1: Heavy monotremes
// Dart has a class named Comparable, which is used by the the sort method of List to sort its elements. Add a weight field to the Platypus class you made in this lesson. Then make Platypus implement Comparable so that when you have a list of Platypus objects, calling sort on the list will sort them by weight.
// Challenge 2: Fake notes
// Design an interface to sit between the business logic of your note-taking app and a SQL database. After that, implement a fake database class that will return mock data.
// Challenge 3: Time to code
// Dart has a Duration class for expressing lengths of time. Make an extension on int so that you can express a duration like so:

//Asynchronous programming
//Implementing a network data class

class Todo {
  Todo({
    required this.userId,
    required this.id,
    required this.title,
    required this.completed,
  });
  factory Todo.fromJson(Map<String, Object?> jsonMap) {
    //Using the Todo contructor to create Todo Objects
    return Todo(
      userId: jsonMap['userId'] as int,
      id: jsonMap['id'] as int,
      title: jsonMap['title'] as String,
      completed: jsonMap['completed'] as bool,
    );
  }

  final int userId;
  final int id;
  final String title;
  final bool completed;

  @override
  String toString() {
    return 'userId : $userId\n'
        'id : $id\n'
        'title: $title\n'
        'completed: $completed';
  }
}

class Comment {
  Comment({
    required this.postId,
    required this.id,
    required this.name,
    required this.email,
    required this.body,
  });
  factory Comment.fromJson(Map<String, Object?> jsonMap) {
    return Comment(
      postId: jsonMap["postId"] as int,
      id: jsonMap["id"] as int,
      name: jsonMap["name"] as String,
      email: jsonMap["email"] as String,
      body: jsonMap["body"] as String,
    );
  }

  final int postId;
  final int id;
  final String name;
  final String email;
  final String body;

  toList() {}
}
