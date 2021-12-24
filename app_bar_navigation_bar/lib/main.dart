import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: false,
            //pinned: true,
            backgroundColor: Colors.grey.shade900,
            expandedHeight: 150,

            title: Text(
              'Scrollable',
              style: TextStyle(
                fontSize: 25,
                color: Colors.blue,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.left,
            ),
            //centerTitle: true,

            actions: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.search),
                iconSize: 30.0,
                color: Colors.blue,
                hoverColor: Colors.red,
                alignment: Alignment.centerRight,
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.more_vert),
                iconSize: 30.0,
                color: Colors.blue,
                hoverColor: Colors.red,
                alignment: Alignment.centerRight,
              )
            ],
            leading: IconButton(
              onPressed: () {},
              icon: Icon(Icons.menu),
              iconSize: 30.0,
              color: Colors.blue,
              hoverColor: Colors.red,
              alignment: Alignment.centerLeft,
            ),
            elevation: 50.0,

            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),

            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                'AppBar',
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.right,
              ),
              centerTitle: true,
            ),
          ),
          SliverFillRemaining(
            child: Text(
              'Please Wait...',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.blue,
            ),
            title: Text(
              'Home',
              style: TextStyle(
                  color: Colors.lightGreenAccent, fontWeight: FontWeight.bold),
            ),
            backgroundColor: Colors.grey.shade900,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.arrow_forward_ios,
              color: Colors.white,
            ),
            title: Text(
              'Forward',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            backgroundColor: Colors.blueGrey,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.notifications,
              color: Colors.blue,
            ),
            title: Text(
              'Notifications',
              style: TextStyle(
                  color: Colors.lightGreenAccent, fontWeight: FontWeight.bold),
            ),
            backgroundColor: Colors.grey.shade800,
          ),
        ],
      ),
    );
  }
}
