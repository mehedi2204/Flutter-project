import 'package:flutter/material.dart';
import 'package:multiple_page/scrollable_app_bar_screen.dart';

class transparent_app_bar_screen extends StatefulWidget {
  const transparent_app_bar_screen({Key? key}) : super(key: key);

  @override
  _transparent_app_bar_screenState createState() => _transparent_app_bar_screenState();
}

class _transparent_app_bar_screenState extends State<transparent_app_bar_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(5.0),),
        ),
        child: Text('NEXT', style: TextStyle(fontWeight: FontWeight.bold),),
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>scrollable_app_bar_screen()
          ),
          );
        },
      ),
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent.withOpacity(0.5),
        title: Text('Transparent AppBar', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
        actions: [
          IconButton(
            onPressed: () {
              setState(() {});
            },
            icon: Icon(Icons.search),
            iconSize: 30.0,
            color: Colors.blue,
            hoverColor: Colors.grey.shade700,
            alignment: Alignment.centerRight,
          ),
          IconButton(
            onPressed: () {
              setState(() {});
            },
            icon: Icon(Icons.more_vert),
            iconSize: 30.0,
            color: Colors.blue,
            hoverColor: Colors.grey.shade700,
            alignment: Alignment.centerRight,
          )
        ],
        leading: IconButton(
          onPressed: () {
            setState(() {});
          },
          icon: Icon(Icons.menu),
          iconSize: 30.0,
          color: Colors.blue,
          hoverColor: Colors.grey.shade700,
          alignment: Alignment.centerLeft,
        ),
      ),
      body: Image.network("https://raw.githubusercontent.com/mdmehedi2204/App-dev.-file/main/pexels-gradienta-7130545.jpg",
      fit: BoxFit.cover,
        width: double.infinity,
        height: double.infinity,
      ),
    );
  }
}
