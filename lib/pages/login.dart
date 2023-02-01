import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/routes.dart';

class MyLoginPage extends StatefulWidget{
  @override
  State<MyLoginPage> createState() => _MyLoginPageState();
}

class _MyLoginPageState extends State<MyLoginPage> {
  String name= "";
  bool changeButton = false;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        children: [
          Image.asset(
            "assets/images/logo_img.png",
          fit:BoxFit.cover,
          ),
          SizedBox(
            height: 20.0,
          ),
          Text("Welcome $name",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
          SizedBox(
            height: 20.0,
          ),
    Padding(
    padding: const EdgeInsets.symmetric(
    vertical: 16.0, horizontal: 32.0),
    child: Column(
    children: [
    TextFormField(
    decoration: InputDecoration(
    hintText: "Enter username",
    labelText: "Username",
    ),
      onChanged: (value){
      setState(() {
        name = value;
      });
      },
    ),
    TextFormField(
    obscureText: true,
    decoration: InputDecoration(
    hintText: "Enter password",
    labelText: "Password",
    ),
    ),
    SizedBox(
    height: 40.0,
    ),
      InkWell(
        onTap: () async {
          setState(() {
             changeButton = true;
          });
          await Future.delayed(Duration(seconds: 1));
          Navigator.pushNamed(context, MyRoutes.homeRoute);
        },
        child: AnimatedContainer(
          duration: Duration(seconds: 1),
          width: changeButton ? 50 : 150,
          height: 50,
          alignment: Alignment.center,
          child: changeButton
              ? Icon(
            Icons.done,
            color: Colors.white,
          )
              : Text(
            "Login",
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 18),
          ),
          decoration: BoxDecoration(
            color: Colors.deepPurple,
            borderRadius:
            BorderRadius.circular(changeButton ? 50 : 8),
          ),
        ),
      ),

      // ElevatedButton(
      //   child: Text("Login"),
      //   style: TextButton.styleFrom(minimumSize: Size(150, 40)),
      //   onPressed: () {
      //     Navigator.pushNamed(context, MyRoutes.homeRoute);
      //   },
      // )
    ],
    ),
    )
        ],
      ),
    );
  }
}