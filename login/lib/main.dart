import 'package:flutter/material.dart';
import 'package:login/home_screen.dart';
import 'package:login/login_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'User Login',

      home: LoginPage(),
    );
  }
}
