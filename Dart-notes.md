
# Dart

# Terms

Bin - this contains the executable dart code

A statement tells the computer to do something

An expression is something

~/ represents the truncating division operator , this can be used when you want to perform integer division

% represents the Euclidean modulo operator - it calculates the remainder of a division

# Types

You can use the dynamic type to assign any data type you like to your variable and the compiler would not warn you about anything

Dart has two types of variables whose values never change, const and final

Const - non mutable variable , cannot be redeclared again

Final - this is the value at runtime - it is a kind of constant called a runtime constant

As a “general” rule try const first , then if the compiler complains then make it final . The benefits of using const is that if gives the compiler the freedom to make internal optimisations to the code before compiling it

Every other the in dart is a subtype of Object and as a subtype it shares Object’s basic functionality

Type annotation is sometimes redundant , the compiler can deduce the types of variables you assign through a process called type inference

We can also check the type at runtime by using the ‘is’ keyword

Another option to see the runtime is to use the runtime Type property that is available to all types

Assigning a decimal value to a integer results in loss of precision

Sometimes you may have a variable of a certain super type, but you only need it to be a specific subtype , you can achieve this with type casting

# Characters , Codepoints and Unicode

A computer needs to be able to translate a character into the computers own language and it does this by assigning each character a different number

Unicode is the standard that defines character set mapping in computers today
The number associated with each character is called a code point

UTF-16 CodeUnits have the same value as Unicode code points for most of the characters we see in a day to day basis ,However , 16 bits only give 65356 combinations but for large characters like emojis we will need more than 16 bits to represent them, that’s why UTF-16 has a special way of encoding them , by using two code units called surrogate pairs
In dart these surrogate pairs are called ‘runes’ and they can be accessed by the method of the same name

There are two unicode code points for flags because , Unicode odes not create a new code point for every item there is a country flag, it uses a pair of code points called regional indicator symbols to represent a flag

Multiple code points can be joined together with a zero with joiner

When a string with multiple code points looks like a single character it is called user perceived character , in technical terms its called a Unicode extended graphene cluster or commonly referred to as grapheme cluster ;


Dart is regarded as an optionally typed language meaning you can choose to use it as a dynamically type language or a statically typed language
You should limit the use of the dynamic keyword and embrace static typing in your code

Object ? And dynamic behave almost the same , however , when you declare a variable as Object? You are stating that the variable has been generalised
Using dynamic is more like saying you don’t know what the type is

The question mark at the end of object means the type can include the null value

Like square brackets, curly braces make the values inside them optional

# Function naming conventions

Use noun phrases for pure functions - functions without side effects eg. AverageTemperature instead of getAverageTemperature

Use verb phrases for functions with side effects , e.g updateDatabase or printHello

Use verb phrases if you want to emphasise that the function does a lot of work e.g parseJson

As you can pass in function as input parameters , you can also return them as output

Anonymous functions in dart act as closures . This term means that the code closes around the surrounding scope , and therefore has access to variables and functions defined within that scope

# Classes

Classes are the architectural blueprints that tell the system how to make an object

Classes are the core component of Object oriented programming , they are used to combine data and functions inside a single structure.

All classes in dart, except from null, are derived from object

You can override the default implementation of a method by using the @override annotation

Words that start with @ are called annotations

Including them is optional and it does not change the way the code executes .
However they give the compiler more information that can help at compile time .
You can override the classes version of a method by using the override annotation , then writing your own implementation

# Object serialisation

Serialization is the process of converting complex data Object into a string when you want to read the data back, this is known as deserialisation , which is simply the process of converting a string back into an object of your data type .

It turns out that serialisation and deserialisation are very common tasks that people have devised a number of standardised formats for serialising data called JSON javascript object notation

If it is a custom method and you are not overriding a method that belongs to another class, we should not put @overrride annotation

Dart offers a cascade operator that allows you to chain multiple assignments on the same object
Without having to repeat the same name

Dart also has a type of generative constructor without the identifier , that is one who only uses the class name as an unnamed constructor
It takes the following pattern :
ClassName.identifierName()

You can call the main constructor from the named constructor

Constructors can be
Forwarding or non forwarding
Named or unnamed
Generative or factory
Constant or non constant

Objects act as references to instances of a class in memory

# Getters

When you call getters using their name the get method returns a value
You can also create getters that aren’t backed by a dedicated field value but instead are calculated when called

# Setters

If you need mutable data in a class , then there’s the set method you can use

# Static

If you put static in front of a member variable or method , that causes the variable or method to belong to the class and not the instance of the class

You can use static methods to create utility or helper methods thats associated with the class and not any particular instance

If you set a variable to final and assign a value to it , then it can’t be redeclared

# Nullability

Null means ‘no value’ or ‘absence of value’
Null actually is a value in the sense that its an object , that is the object null , is the sole instance of the null class

Dart > 2.12 provides sound null safety

Dart types are non nullable by default , they are guaranteed to never contain the value null nullable types end with a question type while non nullable types don’t

String? myString = null;
The question type at the end of the string isn’t an operator acting on the string, but it is a whole different type separate from String
Every non nullable type in dart has its corresponding nullable type

String? Name
Name = ‘xyz’;
print(name.length)
Type promotion - dart promotes , the nullable and largely unusable data-type to a non nullable data type with no extra work from you

Flow analysis - check every possible route the code can take

# Null aware operators

Help you to handle potentially null values
If - null operator - ??
Null- aware assignment operator ??=
Null aware access operator ?.
Null aware method invocation operator ?.
Null assertion operator !
Null aware cascade operator ?..
Null aware index operator ?[]
Null aware spread operator …?

Internally a property is just a getter method on an Object
If you’re absolutely sure that a variable isn’t null , you can turn it into a nullable type by using the null assertion operator ! Or sometimes generally referred to a the bang operator

Null assertion operator is a postfix operator
Not operator is a prefix operator

Think of the !assertion operator as a dangerous option, and one to be used sparingly , by using , you are telling dart you want to opt out of null safety that you can handle it yourself

This is somewhat akin to using dynamic to opt out of type safety

The null aware index operator is used for accessing elements of a list when the list itself might be null

## Note

Dart does not allow you access instance members before initialisation , to solve this problem, we can use the late keyword , if you try to do so it will give you an error ‘ cannot access instance members before initialisation

## late keyword

Using late means that Dart doesn’t initialise the variable right away it only initialises when you access it the first time this is known as lazy initialisation , its like procrastination for variables

When using late you should always remember to initialise your variables before using them , if you don’t dart will throw an error

Like using ! Using late sacrifices the assurance of sound null safety

Lazy initialisation has benefits , there are times when it might take some heavy calculations to initialise a variable , if this variable is not used , then all that initialisation work is a waste of time , top level and static variables have always been lazy

# Lists

Lists in dart are similar to arrays in other languages

Using final means you are not allowed to use the assignment operator to give a list new list

To make a deeply immutable list ,declare it with const

…? - this is the null spread operator it will omit a list if it is null

When creating list you can use a collection if to determine whether it will be included in the list

Because order doesn’t ,matter in sets they can be faster then lists

# Maps

Maps in dart are data structures used to hold key value pairs , they are similar to hashmaps and dictionaries

Iterable is a type that knows how to move sequentially or iterate over elements List and Set both implement Iterable ,Map does not .

Use fold when your collection has the possibility of containing zero

- Use a commanding verb for a method that produces a side effect for example the sort method
- For a method that does not produce a side effect , use an adjective eg reversed

# Iterables

One interesting characteristic of iterables Is that they are last, they wouldn’t do any work until you try to access them , eg print them or converting to a list with the .toList method

The Object class is the top superClass for all non nullable types in dart , all other classes except nulll are subclasses of Object

The super keyword is used to refer to one level up the hierarchy ,similar to the forwarding constructor using super(parameter1,parameter2) passes the constructor parameters to another constructor we are forwarding the parameters to the parent class’s constructor,

A child class making a call to super , both the parent and the child methods run

Deep hierarchies are not always the best choice

Jumping back and forth between levels of hierarachy will make coding difficult
Also, hierarchies are highly bound together any change to a parent class can break a child class , going this will require you refactor all the code that uses the subclasses as well

What if you have a User who is also part of two subclasses eg a student is part of the school band class and student athlete will you now make a studentathleteandschoolband class ?

This has led people to say COMPOSITION OVER INHERITANCE - when appropriate , ADD BEHAVIOUR TO A CLASS RATHER THEN SHARE BEHAVIOUR WITH AN ANCESTOR , more of a focus on what an object has rather than what an object is

Inheritance can be good when the subclass needs all the behaviour of the parent, however when you fly need some of that behaviour , consider passing in the behaviour as a parameter or perhaps using a mixin

Note -

## Concrete classes

  normal classes that you can create objects out of them

## Abstract Classes

you cannot create objects out of them

A method in an abstract class has not braces they just end with a semicolon

Abstract class create behaviour that a subclass can implement but they do not implement
Leaving implementation details up to the subclass is a good thing , because imagine a class Animal with abstract methods eat() and move() there are variety of ways to eat and move throughout the animal kingdom , so it would be good for it to be abstract

You can’t instantiate abstract classes

# Interfaces

Interfaces help you to design the behaviour you expect for all classes that implement the interface , they are  a means of hiding the implementation details of the concrete classes from the rest of your code.

Software architecture -
When building an app , your goal should be to keep core business logic separate from infrastructure like the UI, database ,network and third-party packages the reason being the core business logic doesn’t change frequently while the infrastructure often does so

An interface is a description of how communication is managed between two parties

Dart allows you to extend a single superclass , this is known as single inheritance in contrast with other languages that allow multiple inheritance .

class SomeClass extends AnotherClass {}
class SomeClass implements AnotherClass {}

When you extend Another Class, SomeClass has access to any logic or variables in AnotherClass. However, if SomeClass implements AnotherClass, SomeClass must provide its own version of all methods and avaribels in AnotherClass.

## Implements

The implements keyword tells dart that you only wants the field types and the method signatures

## Mixins

Mixins are a way of reusing methods or variables among otherwise unrelated classes

To create a mixing take whatever concrete code you want to share with different classes and package it in its own special mixing class

You can use dart feature of extension methods that allow you to add features to classes



Tasks that take a long time to complete generally fall into two categories :
I/O tasks and computationally intensive tasks

## Concurrency in Dart

A thread is a sequence of commands that a computer executes some programming languages support multithreading, some do not. Dart is a single threaded language

## Parallelism vs concurrency

Parallelism is when multiple tasks run at the same time on multiple processors or CPU Cores
Concurrency is when different tasks take turns running on the same CPU

When a restaurant has one person taking orders and cleaning tables alternatively thats concurrency
When a restaurant has one person taking orders and a different person cleaning tables thats parallelism

At first glance parallelism seems better right? But there are some problems with it.
Imagine a situation where Tolani has a box for chocolates with ten pieces inside , then she goes out, and gets home to see that there are only 6 left she gets confused why, then she figures out it was her younger brother Ayo that took them , this can be a problem with parallelism , when multiple threads have access to the same values in memory , assuming thread 1 saves a value in memory , then thread 2 modifies the value , thread 1 will be confused how the value is not the same , that is why in multithreaded systems there is a thing called locking so that the value wouldn’t be changed at the wrong time , so the problem isn’t with parallelism itself , but with multiple threads having access to the same values in memory

## Isolates

Dart is based around concurrency on a single thread

In dart , threads runs in what is called an isolate, each isolate has its own dedicated memory area which ensures no isolate can access any others isolates state
That means there’s no need for a complicated locking system

Flutter needs to update the UI 60 times a second where each update times lie is called a frame that leaves about 16 milliseconds to redraw the UI on each frame.
It doesn’t take that long, normally, so that gives you additional time to perform other work while the thread is idle. As long as that work doesn’t block Flutter from updating the UI on the next frame, the user won’t notice any problems. The trick is to schedule tasks during the thread’s downtimes.

## Synchrnous vs Asynchrnous

Synchronous means in order in time , so each instruction is executed in order
Asynchronous code on the other hand certain tasks are rescheduled to be urn in the future when the thread isn’t busy
While some tasks need to executed in order other tasks can be postponed , the postpone tasks are where the dart event loop comes in
The event loop has two queues

### A microtask queue

- mostly used internally by dart

### Event queue

    used for events like keystrokes , data coming in from a database , file , remote server

Synchronous tasks in the main isolate thread are always run immediately , you can’t interrupt them
If dart finds any long running tasks that agree to be postponed .Darts puts them in the event queue

When they say dart is single threaded, it doesn’t mean that you can’t have tasks running on other threads, it means that it only runs on a single thread in the isolate
For example when you ask to read a file on the system , dart doesn’t do this, its the system that does this, and sends the result back to dart ,that work isn’t happening on the dart thread the system is doing the work inside its own process , once the system finishes its work, it sends the result back to dart and dart schedules some code to handle the result in the event queue

Another way to perform work on other threads is to create a new Dart isolate. The new isolate has its own memory and its own thread working in parallel with the main isolate. The two isolates are only able to communicate through messages, though. They have no access to each other’s memory state. The idea is similar to messaging a friend.

You won’t often need to create a new isolate. However, if you have a task that’s taking too long on your main isolate thread, which you’ll notice as unresponsiveness or jank in the UI, then this work is likely a good candidate for handing it off to another isolate.

# Future

Future - it is a promise to give you the value you really want later

- Future itself is generic it can provide any type
At runtime bigInt numbers in dart overflow

Hey I’ll get back to you with that T in Future<T> carry on!

You can get the value after a future competes by using the async await syntax

A future will either give you a value or an error , if it completes with a value yo can get the value by adding a callback to the then method ,the anonymous function provides the value as an argument so that you have access to it .On the other hand if the future completes with an error , you can handle it in catchError .Eitherway, though, you can whether the future completes with a value or error you have the opportunity to run any final code in the whenComplete.

As you can see, the print statement After the future was printed immediately because it is synchronous , them the future results were printed later, even though the future didn’t have the delay it had, it would still have to go to the event queue and wait for all the synchronous code to finish

If the function uses an await keyword , then it must return a Future and add the async keyword before the function body using async clearly tells the function that this is an asynchronous function and that the results will go to the event queue

In front of the future you add the await keyword , once dart sees the await keyword , the rest of the function wouldn’t run until the future completes

This time After the future gets printed last , thats because everything after the await keyword is sent to the event queue

## Exception vs Error

The difference between an exception and an error is that an Exception is something you should expect and handle in the catch block , however an Error is the result of a programming mistake

Socket Exception - you will get this if there is no Internet connection

# Streams

A future represents a single value that will arrive in the future , A stream on the other hand, represents multiple values that will arrive in the future , think of a stream as a list of futures , use streaming music online as an example, when you stream music , you get little chunks of data , as opposed to when you download music you get one whole single value , which is the entire file, kind of what a future returns

Streams (which are of type stream ) are used extensively in Dart and Dart based frameworks e.g in
Reading a large file stored locally
Downloading a file from a remote server
Listening for requests coming in from a server
Representing user events such as button clicks
Replaying changes in app state to the UI

# Isolates -

Most of the time its fine to run your own code synchronously , and for long running I/o tasks you can use dart libraries that return Futures or streams but so times your code can be computationally expensive and degrades app performance

When you are using Futures for the dart I/O libraries , its easy to get deceived into thinking that they will always run in the background, but that is not the case, if you want to run some computationally intensive code on another thread you will need to create a new isolate for that

Since isolates don’t share any memory with each other, they can only communicate by sending messages. When you spawn a new isolate, you give it a message communication object called a send port. The new isolate uses the send port to send messages back to a receive port, which is listening on the main isolate.

## Sendport

it is like all those emergency mobile devices for kids where they can only call home , home in this case is the main isolate

The Flutter framework has a highly simplified way to start a new isolate, perform some work, and then return the result using a function called compute. Rather than passing the function a send port, you just pass it any values that are needed. In this case, you could just pass it the number to count to:
await compute(playHideAndSeekTheLongVersion,
10000000000);

The term for creating an isolate in dart is called spawning

It listens to orders of its customers and it generates orders based on that
List of things that get calculated on the go

# sync*

It is a generator that returns its values synchronously

# async*

It is a generator that returns its values asynchronously

You use a keyword called yield

If you use a for loop with generator functions you are taking advantage of that lazy evaluation and you can break out of the loop any time
