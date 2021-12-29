import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:login/home_screen.dart';
import 'package:login/login_screen.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {

  SignUp() async{
    try{
      UserCredential userCredential = await FirebaseAuth.instance.createUserWithEmailAndPassword(email: _emailcontroller.text, password: _passwordController.text);
      var authCredential = userCredential.user;
      print(authCredential!.uid);
      if(authCredential.uid.isNotEmpty){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()),);
      }

    }on FirebaseAuthException catch(e){
      if (e.code=="Email already in use"){
        Fluttertoast.showToast(msg: "Email already in use");
      } else if (e.code=="Password not perfect") {
        Fluttertoast.showToast(msg: "Password not perfect");
      }
    }
    catch(e){
      print(e);
    }
  }

  TextEditingController _emailcontroller=new TextEditingController();
  TextEditingController _passwordController=new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              TextFormField(
                controller: _emailcontroller,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.mail),
                  contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
                  hintText: "Email",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              TextFormField(
                controller: _passwordController,
                keyboardType: TextInputType.text,
                obscureText: true,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.vpn_key),
                  contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
                  hintText: "Password",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),

              MaterialButton(
                padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
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
                  "SignUP",
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
