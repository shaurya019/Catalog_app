import 'package:flutter/material.dart';

import 'home.dart';
import 'login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      themeMode: ThemeMode.light,
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      initialRoute: "/",
      routes: {
        "/":(context) => MyHomePage(title: 'Flutter Feautres'),
        "/login":(context) => MyLoginPage(),
      },
    );
  }
}




//themeMode: ThemeMode.dark,
//       theme: ThemeData(
//         brightness: Brightness.dark,
//       ),