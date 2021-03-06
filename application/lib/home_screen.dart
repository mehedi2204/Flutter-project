import 'package:application/login_screen.dart';
import 'package:application/user_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  User? user = FirebaseAuth.instance.currentUser;
  UserModel loggedInUser = UserModel();

  @override
  void initState() {
    super.initState();
    FirebaseFirestore.instance
        .collection("users")
        .doc(user!.uid)
        .get()
        .then((value) {
      this.loggedInUser = UserModel.fromMap(value.data());
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Welcome"),
        centerTitle: true,
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Form(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 130,
                      child: Image.asset("assets/Asset 5@4x.png", fit: BoxFit.contain,),
                    ),
                    SizedBox(height: 55,),
                    Text("Welcome Back", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                    SizedBox(height: 10,),
                    Text("${loggedInUser.firstName} ${loggedInUser.secondName}", style: TextStyle(color: Colors.black54, fontWeight: FontWeight.w500),),
                    Text("${loggedInUser.email}", style: TextStyle(color: Colors.black54, fontWeight: FontWeight.w500),),
                    SizedBox(height: 35,),
                    ActionChip(label: Text("Logout"), onPressed: () {logout(context);} , backgroundColor: Colors.redAccent,),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
  //logout function
  Future<void> logout(BuildContext context) async {
    await FirebaseAuth.instance.signOut();
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => LoginScreen(),),);
  }
}
