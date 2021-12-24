import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:user_login/home_screen.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {

  //firebase
  signUp() async{
  try {
  UserCredential userCredential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
  email: emailTextEditingController.text,
  password: passwordTextEditingController.text,
  );
  var authCredential = userCredential.user;
  print(authCredential!.uid);
  if(authCredential.uid.isNotEmpty){
    Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen()),);
  }


  } on FirebaseAuthException catch (e) {
  if (e.code == 'weak-password') {
  Fluttertoast.showToast(msg: "Week Password");
  } else if (e.code == 'email-already-in-use') {
  Fluttertoast.showToast(msg: "Email already in use");
  }
  } catch (e) {
  print(e);
  }
}

  //form key
  final _formkey = GlobalKey<FormState>();
  //editing controller
  final firstNameTextEditingController = new TextEditingController();
  final secondNameTextEditingController = new TextEditingController();
  final emailTextEditingController = new TextEditingController();
  final passwordTextEditingController = new TextEditingController();
  final confirmPasswordTextEditingController = new TextEditingController();

  @override
  Widget build(BuildContext context) {

    //first name field
    final firstNameField = TextFormField(
      autofocus: false,
      controller: firstNameTextEditingController,
      keyboardType: TextInputType.name,
      //validator: (){},
      onSaved: (value){firstNameTextEditingController.text = value!;},
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.account_circle),
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "First Name",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );

    //second name field
    final secondNameField = TextFormField(
      autofocus: false,
      controller: secondNameTextEditingController,
      keyboardType: TextInputType.name,
      //validator: (){},
      onSaved: (value){secondNameTextEditingController.text = value!;},
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.account_circle),
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "Second Name",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );

    //email field
    final emailField = TextFormField(
      autofocus: false,
      controller: emailTextEditingController,
      keyboardType: TextInputType.emailAddress,
      //validator: (){},
      onSaved: (value){emailTextEditingController.text = value!;},
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.mail),
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "Email",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );

    //password field
    final passwordField = TextFormField(
      autofocus: false,
      controller: passwordTextEditingController,
      obscureText: true,
      //validator: (){},
      onSaved: (value){passwordTextEditingController.text = value!;},
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.vpn_key),
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "Password",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );

    //confirm password field
    final confirmPasswordField = TextFormField(
      autofocus: false,
      controller: confirmPasswordTextEditingController,
      obscureText: true,
      //validator: (){},
      onSaved: (value){confirmPasswordTextEditingController.text = value!;},
      textInputAction: TextInputAction.done,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.vpn_key),
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "Confirm Password",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );

    //signup button
    final signUpButton = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(30),
      color: Colors.redAccent,
      child: MaterialButton(
        padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        minWidth: MediaQuery.of(context).size.width,
        onPressed: () {signUp();},
        child: const Text("SignUp",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );

    return Scaffold(
      appBar: AppBar(),
      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(36.0),
              child: Form(
                key: _formkey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 150,
                      child: Image.asset("assets/Asset 5@4x.png", fit: BoxFit.contain,),
                    ),
                    SizedBox(height: 45,),
                    firstNameField,
                    SizedBox(height: 20,),
                    secondNameField,
                    SizedBox(height: 20,),
                    emailField,
                    SizedBox(height: 20,),
                    passwordField,
                    SizedBox(height: 20,),
                    confirmPasswordField,
                    SizedBox(height: 20,),
                    signUpButton,
                    SizedBox(height: 20,),

                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
