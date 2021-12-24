import 'package:flutter/material.dart';

import 'fristscreen.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HELLO'),
      ),
      body: Center(
        child: RaisedButton(
          color: Colors.red,
          child: Text('NEXT'),

        onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> FristScreen()
            )
            );
        },
        ),
      ),
    );
  }
}
