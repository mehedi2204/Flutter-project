import 'package:flutter/material.dart';
import 'pageroute.dart';

class All extends StatefulWidget {
  const All({Key? key}) : super(key: key);

  @override
  _AllState createState() => _AllState();
}

class _AllState extends State<All> {
  TextEditingController _name= new TextEditingController();
  TextEditingController _mail= new TextEditingController();
  TextEditingController _pass= new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            TextField(
              controller: _name,
            ),
            TextField(
              controller: _mail,
            ),
            TextField(
              controller: _pass,
            ),
            RaisedButton(
              child: Text('gdgd'),
              onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (_)=>PageRoutetext(name: _name.text, mail: _mail.text, pass: _pass.text)),);
              },
            ),
          ],
        ),
      ),
    );
  }
}
