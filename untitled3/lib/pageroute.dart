import 'package:flutter/material.dart';

class PageRoutetext extends StatelessWidget {
  String name, mail, pass;

  PageRoutetext({required this.name, required this.mail, required this.pass});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text("Name: $name"),
          Text("Email: $mail"),
           Text("Password: $pass"),
        ],
      ),
    );
  }
}
