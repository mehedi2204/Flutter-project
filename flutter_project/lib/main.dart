import 'package:flutter/material.dart';

void main() {
  runApp(const Sign_in());
}

class Sign_in extends StatefulWidget {
  const Sign_in({Key? key}) : super(key: key);

  @override
  _Sign_inState createState() => _Sign_inState();
}

class _Sign_inState extends State<Sign_in> {

  TextEditingController _email = new TextEditingController();
  TextEditingController _password = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.amber,
        body: Column(
          children: [
            Container(
              color: Colors.amber,
              child: const Padding(
                padding: EdgeInsets.only(left: 12.0, top: 100.0),
                child: Text(
                  "Sign In",
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w900,
                      color: Colors.white),
                ),
              ),
              //height: 350,
              //width: 500,
            ),
            Column(
              children: [
                Container(
                  child: Column(
                    children: [
                      Container(
                        child: const Padding(
                          padding: EdgeInsets.only(left: 12.0, top: 50.0),
                          child: Text(
                            "Welcome Back",
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.w900),
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Container(
                            child: Icon(Icons.ten_k),
                            decoration: BoxDecoration(
                              color: Colors.amber,
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                          Container(
                            child: TextField(
                              controller: _email,
                              decoration: InputDecoration(
                                label: Text("EMAIL"),
                                hintText: "Enter Your Email",
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            child: Icon(Icons.ten_k),
                            decoration: BoxDecoration(
                              color: Colors.amber,
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                          Container(
                            child: TextField(
                              controller: _password,
                              decoration: InputDecoration(
                                label: Text("Password"),
                                hintText: "Enter Your Password",
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  height: 300.0,
                  width: 390.0,
                  decoration: BoxDecoration(
                    color: Colors.brown,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
