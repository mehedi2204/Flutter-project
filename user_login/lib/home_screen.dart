import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
                    Text("Welcome Backe", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                    SizedBox(height: 10,),
                    Text("Name", style: TextStyle(color: Colors.black54, fontWeight: FontWeight.w500),),
                    Text("Email", style: TextStyle(color: Colors.black54, fontWeight: FontWeight.w500),),
                    SizedBox(height: 35,),
                    ActionChip(label: Text("Logout"), onPressed: () {} ),
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
