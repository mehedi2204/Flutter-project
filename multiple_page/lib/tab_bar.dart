import 'package:flutter/material.dart';
import 'package:multiple_page/tab_bar_home_screen.dart';
import 'package:multiple_page/tab_bar_notification_screen.dart';
import 'package:multiple_page/tab_bar_profile_screen.dart';

class tab_bar extends StatefulWidget {
  const tab_bar({Key? key}) : super(key: key);

  @override
  _tab_barState createState() => _tab_barState();
}

class _tab_barState extends State<tab_bar> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Tab Bar"),
          centerTitle: true,
          bottom: TabBar(
            isScrollable: true,
            tabs: [
              Tab(icon: Icon(Icons.home),),
              Tab(text: "Home",),
              Tab(text: "Profile",),
              Tab(text: "Notifications",),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            tab_bar_home_screen(),
            tab_bar_profile_screen(),
            tab_bar_notification_screen(),
            tab_bar_home_screen(),
          ],
        ),

      ),
    );
  }
}
