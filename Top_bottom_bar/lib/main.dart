import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);




  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              floating: false,
              pinned: true,
              backgroundColor: Colors.grey.shade900,
              expandedHeight: 200,

              title: Text('Scrollable App Bar',
              style: TextStyle(
                  fontSize: 30,
                color: Colors.blue,
                fontWeight: FontWeight.bold,
              ),
                textAlign: TextAlign.left,
              ),
        //centerTitle: true,

              actions: [
                IconButton(onPressed: () {}, icon: Icon(Icons.search),
                iconSize: 30.0,
                  color: Colors.blue,
                  hoverColor: Colors.red,
                  alignment: Alignment.centerRight,
                ),

                IconButton(onPressed: () {}, icon: Icon(Icons.more_vert),
                  iconSize: 30.0,
                  color: Colors.blue,
                  hoverColor: Colors.red,
                  alignment: Alignment.centerRight,
                )
              ],
              leading: IconButton(onPressed: () {}, icon: Icon(Icons.menu),
                iconSize: 30.0,
                color: Colors.blue,
                hoverColor: Colors.red,
                alignment: Alignment.centerLeft,
              ),
              elevation: 50.0,

              flexibleSpace: FlexibleSpaceBar(
                title: Text('FlexibleSpaceBar',
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 25,
                ),
                ),
                centerTitle: true,
              ),

            ),
            SliverFillRemaining(
              child: Text('Please Wait...',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),

        bottomNavigationBar: BottomNavigationBar()
          type: BottomNavigationBarType.shifting,


            );
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home),
            title: Text('Home'),
              backgroundColor: Colors.grey.shade900,
            ),
            BottomNavigationBarItem(icon: Icon(Icons.notifications),
            title: Text('Notifications'),
              backgroundColor: Colors.grey.shade900,
            ),
          ],
        ),

      ),
    );
  }
}
