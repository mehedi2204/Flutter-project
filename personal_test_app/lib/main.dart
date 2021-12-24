

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Home", style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold ),),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100),
          ),

flexibleSpace: Container(
  decoration: BoxDecoration(
    gradient: LinearGradient(colors: [Colors.grey.shade600, Colors.red.shade400, Colors.red.shade600]
    ),
  ),
),

          //backgroundColor: Colors.transparent.withOpacity(0.4),


          centerTitle: true,
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.search, color: Colors.black,),),
            IconButton(onPressed: () {}, icon: Icon(Icons.more_vert),),
          ],
          leading: IconButton(onPressed: () {}, icon: Icon(Icons.menu),),
        ),

        body: Image.network('https://raw.githubusercontent.com/mdmehedi2204/App-dev.-file/main/pexels-neosiam-4498792.jpg',
          fit: BoxFit.cover,
          width: double.infinity,
          height: double.infinity,
        ),




      ),
    );
  }
}
