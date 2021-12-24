import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String n="set";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SetState',
      home: Scaffold(
        appBar: AppBar(
          title: Text('SetState'),
        ),
        body: Container(
          child: Center(
            child: Text('$n'),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child:Icon(Icons.add),
          onPressed: () {
            print(n);
            setState(() {
              n='state';
              print(n);
            });
          },
        ),
      ),
    );
  }
}
