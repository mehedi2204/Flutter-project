import 'package:flutter/material.dart';
import 'list_view.dart';
class bottom_navigation_bar extends StatefulWidget {
  const bottom_navigation_bar({Key? key}) : super(key: key);

  @override
  _bottom_navigation_barState createState() => _bottom_navigation_barState();
}

class _bottom_navigation_barState extends State<bottom_navigation_bar> {

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(5.0))
        ),
        child: Text('NEXT', style: TextStyle(fontWeight: FontWeight.bold),),
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>Listview()
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

            title: const Text(
              'Scrollable',
              style: TextStyle(fontWeight: FontWeight.bold,),
              textAlign: TextAlign.left,
            ),
            //centerTitle: true,

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
              title: Text(
                'AppBar',
                style: TextStyle(fontWeight: FontWeight.bold,),
              ),
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
    );
  }
}
