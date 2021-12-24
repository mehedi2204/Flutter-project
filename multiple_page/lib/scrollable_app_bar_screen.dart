import 'package:flutter/material.dart';
import 'package:multiple_page/bottom_navigation_bar.dart';

class scrollable_app_bar_screen extends StatefulWidget {
  const scrollable_app_bar_screen({Key? key}) : super(key: key);

  @override
  _scrollable_app_bar_screenState createState() => _scrollable_app_bar_screenState();
}

class _scrollable_app_bar_screenState extends State<scrollable_app_bar_screen> {
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
          Navigator.push(context, MaterialPageRoute(builder: (context)=>bottom_navigation_bar()
          ),
          );
        },
      ),

      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: false,
            pinned: true,
            backgroundColor: Colors.grey.shade900,
            expandedHeight: 150,

            title: Text('Scrollable',),
            actions: [
              IconButton(
                onPressed: () {
                  setState(() {});
                },
                icon: Icon(Icons.search),
                iconSize: 30.0,
                color: Colors.blue,
                hoverColor: Colors.white54,
                alignment: Alignment.centerRight,
              ),
              IconButton(
                onPressed: () {
                  setState(() {});
                },
                icon: Icon(Icons.more_vert),
                iconSize: 30.0,
                color: Colors.blue,
                hoverColor: Colors.white54,
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
              hoverColor: Colors.white54,
              alignment: Alignment.centerLeft,
            ),

            flexibleSpace: const FlexibleSpaceBar(
              title: Text('AppBar'),
              centerTitle: true,
            ),
          ),
          SliverFillRemaining(
            child: Image.network("https://raw.githubusercontent.com/mdmehedi2204/App-dev.-file/main/pexels-gradienta-7130545.jpg",
            fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity,
            ),
          ),
        ],
      ),
    );
  }
}
