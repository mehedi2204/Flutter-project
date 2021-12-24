import 'package:flutter/material.dart';

class pageroutetext extends StatelessWidget {
  String name, email, password;

  pageroutetext({required this.name, required this.email, required this.password});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
              margin: EdgeInsets.only(bottom: 150),
          height: 100,
          width: 500,
          child: Center(child: Text("Your Profile Information",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30, color: Colors.white)))
          ),
          Container(
            margin: EdgeInsets.only(bottom: 5),
            color: Colors.lightBlue,
              height: 100,
              width: 500,
              child: Center(child: Text("Name: ${name}",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30, color: Colors.white)))
          ),
          Container(
            margin: EdgeInsets.only(bottom: 5),
              height: 100,
              width: 500,
            color: Colors.blueGrey,
              child: Center(child: Text("Email: ${email}",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30, color: Colors.white)))
          ),
          Container(
              height: 100,
              width: 500,
            color: Colors.lightGreen,
              child: Center(child: Text("Password: ${password}",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30, color: Colors.white)))
          ),
        ],
      ),
    );
  }
}
