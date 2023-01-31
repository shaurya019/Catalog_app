import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyLoginPage extends StatefulWidget{
  @override
  State<MyLoginPage> createState() => _myloginState();
}

class _myloginState extends State<MyLoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      body: Center(
        child: Text(
          "Login Page",
          style: TextStyle(
            fontSize: 20,
            color: Colors.blue,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}