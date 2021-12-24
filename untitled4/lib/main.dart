import 'package:flutter/material.dart';

import 'aaaa.dart';
import 'ggg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController _name = new TextEditingController();
  TextEditingController _email = new TextEditingController();
  TextEditingController _password = new TextEditingController();
  bool _state=true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: All(),
    );
  }
}
