
// // Student Tasks///


// // Task 1.1//
// void main(){
//     int age = 23;
//   double height = 2.10;
//   bool isStudent = true;
//   String name = 'Bader';
//   List<int> scores = [10, 9, 7];
  


//   print('$name is $age years old and $height meters tall.');
//   print('Student: $isStudent');
//   print('Scores: $scores');
  

//   // Task 1.2//
//   var city= "Riyadh";
//   print('City: $city');

// }


// Task 2 //
// void main(){
//   final String courseName = 'Mobile App Development';
//   const double pi = 3.14159;

//   dynamic anything = 'I can be any type!';
// //courseName = 'Web Development';
//  //pi = 3.14;
//   print(courseName);
//   print(pi);
//   print(anything);

//   anything = 42;
//   print(anything);

// // Answers to the Questions //

// // Q1. What is the difference between `final` and `const`?
// //Ans: Final it stores the value during the run time, unlike const which does that in the compilation process.
// // Q2. Why can `dynamic` change from `String` to `int`?
// //Ans: It is not specified to a specific type and it can change between each becuase it is not bind to any type



// }



// Task 3 //


// // This is a positional parameter function
// // it asks for two parameters, name and greeting, in a specific order.
// void greet(String name, String greeting) {
//   print('$greeting, $name!');
// }

// // This is a named parameter function
// // it allows you to specify parameters by name when calling the function
// void greetWelcome(String name, [String greeting = 'Welcome']) {
//   print('$greeting, $name!');
// }

// ### This is an optional named parameter function ### //
// ### it allows you to specify parameters by name and provides a default value for the greeting parameter if it is not provided. ##



// void greetAgain({required String name, String? greeting}) {
//   print('${greeting ?? 'Hi'}, $name!');
// }

// void main() {
//   greet('Bader', 'Hello');
//   greetWelcome('Bader');
//   greetWelcome('Bader', 'Good morning');
//   greetAgain(name: 'Bader', greeting: 'Hello');
//   greetAgain(name: 'Bader');
// }

// ## Task 3.2 ##//

// void performOperation(
//   int a,
//   int b,
//   int Function(int, int) operation,
// ) {
//   print(operation(a, b));
// }

// int add(int a, int b) => a + b;
// int subtract(int a, int b) => a - b;

// // Student Task//
// int multiply(int a, int b) => a*b; 

// void main() {
//   performOperation(10, 5, add);
//   performOperation(10, 5, subtract);
//   performOperation(10,5, multiply); // Student Task
// }




///  Task 4 ///

// void main() {
//   var fruitsList = ['apples', 'oranges', 'bananas']; // This is a normal list 
//   var grades = {'quiz1': 85, 'quiz2': 92}; // This is a dictionary which associates keys with values
//   var tags = {'dart', 'flutter', 'mobile', 'flutter'}; // This is a set which does not allow duplicate values

//   // Student Task 4.1 //
//   fruitsList.add('grapes');
//   grades.addAll({'quiz3': 89});
//   tags.add('dart');
//   tags.add('Firebase');


// // Outputs for Student Task 4.1
//   print(fruitsList[2]);
//   print(grades['quiz3']); 
//   print(tags);
// }



// Task 4.2 //

// void main() {
//   List<String> fruitsList = ['apples', 'oranges', 'bananas'];
//   List<String> moreFruits = ['grape', 'kiwi'];

//  moreFruits.add('mango'); // Addition operation
//  fruitsList.removeRange(0, fruitsList.length); // Removal of everything

//   List<String> allFruits = [
//     'watermelon',
//     if (fruitsList.isNotEmpty) ...fruitsList,  /// ... Includes all the elements of fruitsList if it is not empty
//     for (var fruit in moreFruits) fruit,
//   ];

//   print(allFruits);
// }




// Task 5 //

// class User {
//   final String username;
//   final String email;

//   User(this.username, this.email);
// }

// void main() {
//   var user = User('ali_ux', 'ali@email.com');
//   var meee = User("Bader","bader@email.com");

//   print(user.username);
//   print(user.email);

//  // Task 5.1 //
//   print(meee.username); 
//   print(meee.email);
// }


// abstract class Post {
//   final String author;

//   Post(this.author);

//   void render();
// }

// class TextPost extends Post {
//   final String text;

//   TextPost(String author, this.text) : super(author);

//   @override
//   void render() {
//     print('Text post by $author: "$text"');
//   }
// }

// class ImagePost extends Post {
//   final String imageUrl;

//   ImagePost(String author, this.imageUrl) : super(author);

//   @override
//   void render() {
//     print('Image post by $author at $imageUrl');
//   }
// }
// // Student Task 5.2 //
// class VideoPost extends Post {
//     final String videoUrl;

//     VideoPost(String author, this.videoUrl) : super(author);

//     @override 
//     void render(){
//         print('Video uploaded by $author at $videoUrl');
//     }

// }

// void main() {
//   List<Post> feed = [
//     TextPost('khalid', 'Flutter is amazing!'),
//     ImagePost('omar', 'https://example.com/sunset.png'),
//     VideoPost('Bader', 'https://example.com/video.mp4') // Student Task 5.2
//   ];

//   for (final post in feed) {
//     post.render();
//   }
// }



// Task 5.3 //

// class Animal {
//   void makeSound() {
//     print('Some generic sound');
//   }
// }

// mixin Swimmer {
//   void swim() {
//     print('I can swim!');
//   }
// }

// class Duck extends Animal with Swimmer {} // Student Task 5.3//


// class Dolphin extends Animal with Swimmer {}

// void main() {
//   final dolphin = Dolphin();
//   dolphin.swim();
//   dolphin.makeSound();

// // Student Task  //
// var duck = Duck();
//    duck.makeSound();
//    duck.swim();


// }


// // Task 6 //
// import 'person.dart';

// void main() {
//   final person = Person('Osama', 'Ali');
//   print(person.greet());

//   // The following line causes a compile-time error because
//   // _firstName is private to person.dart's library.
//   //print(person._firstName);
// }


// import 'person.dart';

// void main() {
//   final person = GreetingPerson('Bader', 'Nawaf');
//   person.sayHi();
// }

// // Student Task 6.2 //

// // GreetingPerson is a subclass of Person,
// // and it can access the private fields _firstName and _lastName 
// //because it is defined in the same library (person_library)  using part of.

// Tasks 7 //

// Task 7.1 //

// class UserProfile {
//   final String name;
//   String? bio;

//   UserProfile(this.name, {this.bio});

//   String getDisplayBio() {
//     return bio ?? 'No bio provided.';
//   }
// }

// void main() {
//   final user1 = UserProfile('Ahmed');
//   final user2 = UserProfile('Layla', bio: 'Flutter Developer');
//   final user3 = UserProfile('Bader' ); // Student Task

//   print(user1.getDisplayBio());
//   print(user2.getDisplayBio());
//   print(user3.getDisplayBio()); // Student Task 
// }


// class User {
//   final String username;
//   final String email;

//   User(this.username, this.email);
// }

// abstract class Post {
//   final String author;

//   Post(this.author);

//   void render();
// }

// class TextPost extends Post {
//   final String text;

//   TextPost(String author, this.text) : super(author);

//   @override
//   void render() {
//     print('Text post by $author: "$text"');
//   }
// }

// class ApiResponse<T> {
//   final bool success;
//   final T? data;
//   final String? errorMessage;

//   ApiResponse(this.success, {this.data, this.errorMessage});
// }

// void main() {
//   final userResponse = ApiResponse<User>(
//     true,
//     data: User('khalid', 'khalid@example.com'),
//   );

//   print(userResponse.data?.username);

//   final postResponse = ApiResponse<Post>(
//     true,
//     data: TextPost('Turki', 'Flutter is awesome'),
//   );

//   if (postResponse.success) {
//     postResponse.data?.render();
//   } else {
//     print('Response failed: ${postResponse.errorMessage}');
//   }

//   final errorResponse = ApiResponse<User>(
//     false,
//     errorMessage: 'Unable to load user',
//   );

//   print(errorResponse.errorMessage);


// // Student Task 7.2 //
//     final intResponse = ApiResponse<int>(
//     true,
//     data: 200,
//   );

//   print(intResponse.data);

// }


// // Task 8 //
// Future<String> fetchData() async {
//   await Future.delayed(const Duration(seconds: 2));
//   return 'Fetched Data';
// }


// // That is the order
// // [1] Using async/await
// // [2] Fetching data...
// // [3] Result: Fetched Data
// // [4] Using .then()
// // [5] Program continues after .then() call
// // [6] .then() result: Fetched Data
// //[7] appears only if an error occurs
// Future<void> main() async {
//   print('[1] Using async/await');
//   print('[2] Fetching data...');

//   final data = await fetchData();
//   print('[3] Result: $data');

//   print('[4] Using .then()');

//   fetchData().then((value) {
//     print('[6] .then() result: $value');
//   }).catchError((error) {
//     print('[7] Error: $error');
//   });

//   print('[5] Program continues after .then() call');
// }


// Task 8.2//

// Stream<int> countStream(int to) async* {
//   for (int i = 1; i <= to; i++) {
//     await Future.delayed(const Duration(seconds: 1));
//     yield i;
//   }
// }

// Future<void> main() async {
//   print('Start counting...');

// // Student Task 8.2 //
//   await for (final count in countStream(3)) {
//     print(count);
//   }

//   print('Done');
// }


// Task 9 Code//
// import 'package:flutter/material.dart';                       // 1

// void main() => runApp(const MyApp());                       // 3

// class MyApp extends StatelessWidget {                       // 5
//   const MyApp({super.key});                                 // 6

//   @override                                                  // 8
//   Widget build(BuildContext context) {                      // 9
//     return const MaterialApp(                               // 10
//       home: MyHomePage(title: 'Flutter Demo'),              // 11
//     );                                                       // 12
//   }                                                          // 13
// }                                                            // 14

// class MyHomePage extends StatefulWidget {                   // 16
//   const MyHomePage({super.key, required this.title});       // 17

//   final String title;                                       // 19

//   @override                                                  // 21
//   State<MyHomePage> createState() => _MyHomePageState();    // 22
// }                                                            // 23

// class _MyHomePageState extends State<MyHomePage> {          // 25
//   int _counter = 0;                                         // 26
//   String? message;                                          // 27

//   void _incrementCounter() {                                // 29
//     setState(() {                                           // 30
//       _counter++;                                           // 31
//       message = 'Button pressed';                           // 32
//     });                                                      // 33
//   }                                                          // 34

//   @override                                                  // 36
//   Widget build(BuildContext context) {                      // 37
//     return Scaffold(                                        // 38
//       appBar: AppBar(                                       // 39
//         title: Text(widget.title),                          // 40
//       ),                                                     // 41
//       body: Center(                                         // 42
//         child: Column(                                      // 43
//           mainAxisAlignment: MainAxisAlignment.center,      // 44
//           children: <Widget>[                               // 45
//             Text('Count: $_counter'),                       // 46
//             Text(message ?? 'Press the button'),            // 47
//           ],                                                 // 48
//         ),                                                   // 49
//       ),                                                     // 50
//       floatingActionButton: FloatingActionButton(           // 51
//         onPressed: _incrementCounter,                       // 52
//         child: const Icon(Icons.add),                       // 53
//       ),                                                     // 54
//     );                                                       // 55
//   }                                                          // 56
// }                                                            // 57




// Task 9 Solution // 

// Variables and types              |       19, 26, 27 
// Null safety                      |       17, 27, 47 
// Function definitions             | 3, 9, 22, 29, 37 
// Collections                      |            45–48 
// Class definitions                |        5, 16, 25 
// Generics                         |       22, 25, 45 
// Positional parameter definitions |            9, 37 
// Named parameter definitions      |            6, 17 
// Private members                  |       25, 26, 29 
// Importing packages               |                1 
// Inheritance                      |        5, 16, 25 
