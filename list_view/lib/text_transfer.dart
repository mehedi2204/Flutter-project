import 'package:flutter/material.dart';


class DataStroore extends StatelessWidget {

  String name,password;
  DataStroore({required this.name, required this.password});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text('Name:- ${name}'),
          Text('Pass:- ${password}'),
        ],
      ),
    );
  }


}
