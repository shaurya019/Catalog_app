import 'package:features/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'pages/home.dart';
import 'pages/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      themeMode: ThemeMode.light,
      theme: ThemeData(primarySwatch: Colors.deepPurple,fontFamily:GoogleFonts.lato().fontFamily,),
      initialRoute: MyRoutes.homeRoute,
      routes: {
        "/": (context) => MyLoginPage(),
        MyRoutes.homeRoute: (context) => MyHomePage(title: 'Catalog App',),
        MyRoutes.loginRoute: (context) => MyLoginPage()
      },
    );
  }
}




//themeMode: ThemeMode.dark,
//       theme: ThemeData(
//         brightness: Brightness.dark,
//       ),