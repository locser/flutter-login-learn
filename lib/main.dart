import 'package:flutter/material.dart';
import 'package:flutter_2/screens/onboarding/onboarding_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'The Flutter Way',
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFFEEF1F8),
        primarySwatch: Colors.blue,
        fontFamily: "Intel",
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: Colors.white,
          errorStyle: TextStyle(height: 0),
        ),
      ),
      home: const OnboardingScreen(),
    );
  }
}


// // import 'package:flutter/material.dart';

// // void main() {
// //   runApp(const MyApp());
// // }

// // class Todo {
// //   final String title;
// //   final String description;

// //   const Todo(this.title, this.description);
// // }

// // class MyApp extends StatelessWidget {
// //   const MyApp({super.key});

// //   // This widget is the root of your application.
// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //         home: DefaultTabController(
// //             length: 3,
// //             child: Scaffold(
// //               appBar: AppBar(
// //                   title: const Text('Learn Flutter'),
// //                   bottom: const TabBar(tabs: [
// //                     Tab(
// //                       icon: Icon(
// //                         Icons.live_tv,
// //                       ),
// //                     ),
// //                     Tab(
// //                       icon: Icon(
// //                         Icons.stream,
// //                       ),
// //                     ),
// //                     // Tab(icon: Icon(Icons.directions_bike)),
// //                   ])),
// //               body: const TabBarView(
// //                 children: [
// //                   // Icon(Icons.directions_car),
// //                   FirstRoute(),
// //                   Icon(
// //                     Icons.stream,
// //                   ),
// //                   // TodosScreen(
// //                   //     todos: List.generate(20, (index) => Todo('123', '12333'),
// //                   //         growable: true)
// //                   //     // todos: [],
// //                   //     )
// //                 ],
// //               ),
// //             )));
// //   }
// // }

// // class TodosScreen extends StatelessWidget {
// //   final List<Todo> todos;

// //   const TodosScreen({
// //     super.key,
// //     required this.todos,
// //   });

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: const Text('Todos'),
// //       ),
// //       body: ListView.builder(
// //         itemCount: todos.length,
// //         itemBuilder: (context, index) {
// //           return ListTile(
// //             title: Text(todos[index].title),
// //           );
// //         },
// //       ),
// //     );
// //   }
// // }

// // class FirstRoute extends StatelessWidget {
// //   const FirstRoute({super.key});

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: const Text('First Route'),
// //       ),
// //       body: Center(
// //         child: ElevatedButton(
// //           child: const Text('Open route 1'),
// //           onPressed: () {
// //             Navigator.push(context,
// //                 MaterialPageRoute(builder: (context) => const SecondRoute()));
// //           },
// //         ),
// //       ),
// //     );
// //   }
// // }

// // class SecondRoute extends StatelessWidget {
// //   const SecondRoute({super.key});

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: const Text('Second Route'),
// //       ),
// //       body: Center(
// //         child: ElevatedButton(
// //           child: const Text('Go Back, bro!'),
// //           onPressed: () {
// //             Navigator.pop(context);
// //           },
// //         ),
// //       ),
// //     );
// //   }
// // }

// import 'package:flutter/material.dart';

// class Todo {
//   final String title;
//   final String description;

//   const Todo(this.title, this.description);
// }

// const List<Todo> todos = [
//   Todo('Điện thoại ', 'RTMP'),
//   Todo('Máy tính', 'WebRTC'),
// ];

// void main() {
//   runApp(MaterialApp(title: 'Flutter ', home: Scaffold(body: Homepage())));
// }

// class Homepage extends StatelessWidget {
//   const Homepage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Home Page'),
//       ),
//       body: Center(
//         child: ElevatedButton(
//           child: const Text('Vippro 123'),
//           onPressed: () {
//             Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                     builder: (context) => TodosScreen(todos: todos)));
//           },
//         ),
//       ),
//     );
//   }
// }

// // TodosScreen(
// //         todos: List.generate(
// //           20,
// //           (i) => Todo(
// //             'Todo $i',
// //             'A description of what needs to be done for Todo $i',
// //           ),
// //         ),
// //       )

// class TodosScreen extends StatelessWidget {
//   const TodosScreen({super.key, required this.todos});

//   final List<Todo> todos;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Chọn một cái gì đó'),
//       ),
//       body: ListView.builder(
//         itemCount: todos.length,
//         itemBuilder: (context, index) {
//           return ListTile(
//             title: Text(todos[index].title),
//             // When a user taps the ListTile, navigate to the DetailScreen.
//             // Notice that you're not only creating a DetailScreen, you're
//             // also passing the current todo through to it.
//             onTap: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                   builder: (context) => const DetailScreen(),
//                   // Pass the arguments as part of the RouteSettings. The
//                   // DetailScreen reads the arguments from these settings.
//                   settings: RouteSettings(
//                     arguments: todos[index],
//                   ),
//                 ),
//               );
//             },
//           );
//         },
//       ),
//     );
//   }
// }

// class DetailScreen extends StatelessWidget {
//   const DetailScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final todo = ModalRoute.of(context)!.settings.arguments as Todo;

//     // Use the Todo to create the UI.
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(todo.title),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16),
//         child: Text(todo.description),
//       ),
//     );
//   }
// }
