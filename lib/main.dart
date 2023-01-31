import 'package:flutter/material.dart';

import 'home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      themeMode: ThemeMode.light,
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}




//themeMode: ThemeMode.dark,
//       theme: ThemeData(
//         brightness: Brightness.dark,
//       ),