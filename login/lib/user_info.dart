import 'package:flutter/material.dart';
import 'package:login/home_screen.dart';
import 'package:login/login_screen.dart';

class UserDetails extends StatefulWidget {
  const UserDetails({Key? key}) : super(key: key);

  @override
  _UserDetailsState createState() => _UserDetailsState();
}

class _UserDetailsState extends State<UserDetails> {

  TextEditingController _firstName = new TextEditingController();
  TextEditingController _secondName = new TextEditingController();
  TextEditingController _gender = new TextEditingController();
  TextEditingController _calender = new TextEditingController();

  List<String> gender=["Male","Female","Others"];

  Future<void> _calenderf() async{
    final DateTime? pick=await showDatePicker(context: context,
        initialDate: DateTime(DateTime.now().year),
        firstDate: DateTime(DateTime.now().year-72),
        lastDate: DateTime(DateTime.now().year+8),
    );
    if(pick!=null){
      setState(() {
        _calender.text="${pick.day}/${pick.month}/${pick.year}";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              TextFormField(
                controller: _firstName,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
                  hintText: "First Name",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              SizedBox(height: 5.0,),
              TextFormField(
                controller: _secondName,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
                  hintText: "Second Name",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              SizedBox(height: 5.0,),
              TextFormField(
                controller: _gender,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  suffixIcon: DropdownButton(
                    items: gender.map((String value){
                      return DropdownMenuItem(value: value,
                      child: new Text(value),
                        onTap: (){
                        setState(() {
                          _gender.text=value;
                        });
                        },
                      );
                    }).toList(),
                    onChanged: (context){},
                  ),
                  contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
                  hintText: "Gender",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              SizedBox(height: 5.0,),
              TextFormField(
                controller: _calender,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                    icon: Icon(Icons.calendar_today_outlined),
                    onPressed: (){
                      _calenderf();
                    },
                  ),
                  contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
                  hintText: "D/M/Y",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              SizedBox(height: 5.0,),
              MaterialButton(
                padding: EdgeInsets.fromLTRB(15, 10, 15, 10),
                minWidth: MediaQuery.of(context).size.width,
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LoginPage(),
                    ),
                  );
                },
                child: const Text(
                  "Submit",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ),);
  }
}
