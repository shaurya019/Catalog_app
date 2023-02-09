import 'package:features/pages/cart_page.dart';
import 'package:features/utils/routes.dart';
import 'package:features/widgets/themes.dart';
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
      themeMode: ThemeMode.system,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      initialRoute: MyRoutes.homeRoute,
      routes: {
        "/": (context) => MyLoginPage(),
        MyRoutes.homeRoute: (context) => MyHomePage(title: 'Catalog App',),
        MyRoutes.loginRoute: (context) => MyLoginPage(),
        MyRoutes.cartRoute: (context) => CartPage(),
      },
    );
  }
}




//themeMode: ThemeMode.dark,
//       theme: ThemeData(
//         brightness: Brightness.dark,
//       ),