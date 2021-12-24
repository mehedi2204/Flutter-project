import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _currentIndex = 0;

  String n = "Click any Icon Button";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'StateLess Widget',
      home: Scaffold(
        body:  CustomScrollView(
          slivers: [
            SliverAppBar(
              floating: false,
              pinned: true,
              backgroundColor: Colors.grey.shade900,
              expandedHeight: 150,

              title: const Text(
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
                  onPressed: () {
                    setState(() {
                      print('$n');
                      n = 'This is a "Search" Button';
                      print('$n');
                    });
                  },
                  icon: Icon(Icons.search),
                  iconSize: 30.0,
                  color: Colors.blue,
                  hoverColor: Colors.red,
                  alignment: Alignment.centerRight,
                ),
                IconButton(
                  onPressed: () {
                    setState(() {
                      print('$n');
                      n = 'This is a "More_Vert" Button';
                      print('$n');
                    });
                  },
                  icon: Icon(Icons.more_vert),
                  iconSize: 30.0,
                  color: Colors.blue,
                  hoverColor: Colors.red,
                  alignment: Alignment.centerRight,
                )
              ],
              leading: IconButton(
                onPressed: () {
                  setState(() {
                    print('$n');
                    n = 'This is a Leading "Menu" Button';
                    print('$n');
                  });
                },
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

              flexibleSpace: const FlexibleSpaceBar(
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
              child: Center(
                child: Text(
                  '$n',
                  style: const TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.shifting,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
              print('$n');
              n = 'This is a "BottomNavigationBar"';
              print('$n');
            });
          },
          currentIndex: _currentIndex,
          items: [
            BottomNavigationBarItem(

              //activeIcon: Text(n='This is a Home Button'),
              icon: const Icon(
                Icons.home,
                color: Colors.blue,
              ),
              title: const Text(
                'Home',
                style: TextStyle(
                    color: Colors.lightGreenAccent,
                    fontWeight: FontWeight.bold),
              ),
              backgroundColor: Colors.grey.shade900,
            ),
            const BottomNavigationBarItem(
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
              icon: const Icon(
                Icons.notifications,
                color: Colors.blue,
              ),
              title: const Text(
                'Notifications',
                style: TextStyle(
                    color: Colors.lightGreenAccent,
                    fontWeight: FontWeight.bold),
              ),
              backgroundColor: Colors.grey.shade800,
            ),
          ],
        ),
      ),
    );
  }
}
