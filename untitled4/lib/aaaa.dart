import 'package:flutter/material.dart';

import 'ggg.dart';

class All extends StatefulWidget {
  const All({Key? key}) : super(key: key);

  @override
  _AllState createState() => _AllState();
}

class _AllState extends State<All> {
  TextEditingController _name =new TextEditingController();
  TextEditingController _email =new TextEditingController();
  TextEditingController _password =new TextEditingController();
  bool _state = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(100.0),
            child: Container(
              //alignment: Alignment.center,
              color: Colors.amber,
              child: Text(
                "Sign In", textAlign: TextAlign.center,
                style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
              ),
              height: 63,
              width: 180,
            ),
          ),
          Container(
            height: 518,
            width: 400,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(25.0), topRight: Radius.circular(25.0),),
            ),
            child: Column(
              children: [
                Container(
                  height: 80,
                  width: 350,
                  child: Padding(
                    padding: EdgeInsets.only(left: 1.0, top: 20.0),
                    child: Text("Welcome", style: TextStyle(fontSize: 40, fontWeight: FontWeight.w600),),
                  ),
                ),
                Container(
                  height: 40,
                  width: 340,
                  child: Text("We Glade", style: TextStyle(fontSize: 20),),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Container(
                        alignment: Alignment.topLeft,
                        height: 80,
                        width: 60,
                        decoration: BoxDecoration(
                          color: Colors.lightBlue,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(child: Icon(Icons.people, color: Colors.white, size: 40.0,)),
                      ),
                      Container(
                        width: 10,
                      ),
                      Container(
                        height: 80,
                        width: 300,
                        child: TextField(
                          controller: _name,
                          style: TextStyle(height: 2.5),
                          decoration: InputDecoration(
                            labelText: "Name",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 8,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Container(
                        alignment: Alignment.topLeft,
                        height: 80,
                        width: 60,
                        decoration: BoxDecoration(
                          color: Colors.lightBlue,
                          borderRadius: BorderRadius.circular(7),
                        ),
                        child: Center(child: Icon(Icons.mail, color: Colors.white, size: 40.0,)),
                      ),
                      Container(
                        width: 10,
                      ),
                      Container(
                        height: 80,
                        width: 300,
                        child: TextField(
                          controller: _email,
                          style: TextStyle(height: 2.5),
                          decoration: InputDecoration(
                            labelText: "Email",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 8,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Container(
                        alignment: Alignment.topLeft,
                        height: 80,
                        width: 60,
                        decoration: BoxDecoration(
                          color: Colors.lightBlue,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(child: Icon(Icons.lock, color: Colors.white, size: 40.0,)),
                      ),
                      Container(
                        width: 10,
                      ),
                      Container(
                        height: 80,
                        width: 300,
                        child: TextField(
                          controller: _password,
                          style: TextStyle(height: 2.5),
                          decoration: InputDecoration(
                            labelText: "Password",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            suffix: IconButton(onPressed: (){
                              setState(() {
                                _state=!_state;
                              });
                            }, icon: Icon(Icons.remove_red_eye),),
                            contentPadding: EdgeInsets.all(10),
                          ),
                          obscureText: _state,
                          obscuringCharacter: "#",
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 10,
                ),
                Container(
                  height: 40,
                  width: 150,
                  child: ElevatedButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> pageroutetext(name: _name.text, email: _email.text, password: _password.text)),);
                  }, child: Text("Submit", style: TextStyle(fontSize: 25.0),),),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
