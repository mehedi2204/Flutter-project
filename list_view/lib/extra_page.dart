import 'package:flutter/material.dart';
import 'text_transfer.dart';

class ExtraPage extends StatefulWidget {

  @override
  _ExtraPageState createState() => _ExtraPageState();
}

class _ExtraPageState extends State<ExtraPage> {
  TextEditingController _name = new TextEditingController();
  TextEditingController _password = new TextEditingController();

  bool _state=true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Extra Page",
        style: TextStyle(fontFamily: "Comforter Brush"),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            controller: _name,
            decoration: InputDecoration(
              //labelText: "Name",
              label: Text("Name"),
              hintText: "Enter your full name",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(40),
              ),
            ),
            maxLength: 20,
            ),
          TextField(
            controller: _password,
            decoration: InputDecoration(
              labelText: "Password",
              hintText: "Enter 8 carecters password",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(40)),
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
            maxLength: 8,
          ),
          ElevatedButton(onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context)=> DataStroore(name: _name.text, password: _password.text)),);
          }, child: Text("Next"),
          ),
        ],
      ),
    );
  }
}
