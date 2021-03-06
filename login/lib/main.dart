import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:login/home_screen.dart';
import 'package:login/login_screen.dart';
import 'package:login/user_info.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'User Login',

      home: LandingPage(),
    );
  }
}


class LandingPage extends StatelessWidget {
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
            return LoginPage();
          }
          return Scaffold(
            backgroundColor: Colors.red,

          );
        }
    );
  }
}

