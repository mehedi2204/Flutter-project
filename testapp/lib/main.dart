import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'llll.dart';
import 'kkkk.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
    );
  }
}

class LandingPage extends StatelessWidget {
  //final Future<FirebaseApp> _initialization = Firebase.initializeApp();
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: _initialization,
        builder: (context, snapshot){
          if(snapshot.hasError){
            return Scaffold(
              body: Center(
                child: Text('Error ${snapshot.error}'),
              ),
            );
          }
          if(snapshot.connectionState == ConnectionState.done){
            return HomePage();
          }
          return Scaffold(
            body: Center(
              child: Text('Connect to app'
              ),
            ),

          );
        }
    );
  }
}

